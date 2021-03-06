<?php
    function taskInfo($task){
        $where=array('deleted'=>'0');
        $arr=M('task')->where($where)->find($task);
        return "【".getProNo($arr['project']).'】<span class="label label-default">'.getProst($arr['status'])."</span>【".taskLastUpdateDate($arr['id']).'】<br><br>'.$arr['name'];
    }
    function taskWorkTime($task){
        $where=array('deleted'=>'0');
        $arr=M('task')->where($where)->find($task);
        return '预估：'.$arr[estimate].',消耗：'.$arr[consumed].',剩余：'.$arr[left];
    }
    function countTaskWorkTime($account){      
        $riqi=date("Y-m-d",time()-9*24*3600);
        $map['date']  = array('egt',$riqi);
        $map['account']=$account;
        $data=M('taskestimate')->where($map)->order('date desc')->select();
        foreach ($data as $task){
            $arr[]=$task['task'];
        }
        $a=count(array_unique($arr));
        return $a;
    }
    
    function countTask($storyid){
        $where['story']=$storyid;
        $where['deleted']='0';
        $data=M('task')->where($where)->count();
        return $data;       
    }
    function sumTaskEstimate($storyid){
        $where['story']=$storyid;
        $where['deleted']='0';
        $data=M('task')->where($where)->sum('estimate');
        return $data;   
    }
    function sumTaskConsumed($storyid){
        $where['story']=$storyid;
        $where['deleted']='0';
        $data=M('task')->where($where)->sum('consumed');
        return $data;   
    }
    
    function sumUserEstimate($user){
        if($user){
            $where['assignedTo']=$user;
        }else {
            $where['assignedTo']="";
        }
        
        $where['status']=array('neq','closed');
        $where['status']=array('neq','cancel');
        $where['status']=array('neq','done');
        $where['deleted']='0';
        $data=M('task')->where($where)->sum('estimate');
        return $data;   
    }
    
    function sumUserConsumed($user){
        if($user){
            $where['assignedTo']=$user;
        }else {
            $where['assignedTo']="";
        }
        $where['status']=array('neq','closed');
        $where['status']=array('neq','cancel');
        $where['status']=array('neq','done');
        $where['deleted']='0';
        $data=M('task')->where($where)->sum('consumed');
        return $data;  
    }
    
    function sumUserLeft($user){
        if($user){
            $where['assignedTo']=$user;
        }else {
            $where['assignedTo']=array('eq','');
        }
        $where['status']=array('neq','closed');
        $where['status']=array('neq','cancel');
        $where['status']=array('neq','done');
        $where['deleted']='0';
        $data1=M('task')->where($where)->sum('estimate');
        $data2=M('task')->where($where)->sum('consumed');
        $data=$data1-$data2;
        return $data;
    }
    
    function countTaskBug($account){
        $where['resolvedBy|closedBy']=$account;
        $riqi=date("Y-m-d",time()-9*24*3600);
        $where['resolvedDate']= array('egt',$riqi);
        $m=M('bug');
        $data=$m->where($where)->count();
        return $data;
    }
    function taskLastUpdateDate($task){
        $m=D('taskestimate');
        $where['task']=$task;
        $where['account']=$_SESSION['taskAccount'];
        $arr=$m->where($where)->order('date desc')->select();
        return $arr[0]['date'];               
    }
    
    function taskestimate($task){
        $m=D('taskestimate');
        $where['task']=$task;
        $where['consumed']=array('gt',0);;
        $arr=$m->where($where)->order('date desc')->select();
        foreach ($arr as $ar){
            $str.='<li class="list-group-item">';
            $str.=      getZTUserName($ar['account'])."&nbsp;";
            $str.=      '：'.$ar['date']."&nbsp;"; 
            $str.=      '<span class="label label-default">'.$ar['consumed'].' 小时</span>';
            $str.=      $ar['work'];                     
            $str.='</li>';
        } 
        return $str;
    }
    
    function getStoryStage($stage){
       if($stage=='developed'){
           return '研发完成';
       }elseif($stage=='released'){
           return '已发布';
       }elseif($stage=='projected'){
           return '已立项';
       }elseif($stage=='developing'){
           return '开发中';
       }elseif($stage=='testing'){
           return '测试中';
       }
    }
    
    function sunUserProject($projet,$user){
//         $riqi=date("Y-m-d",time()-9*24*3600);
//         $where['zt_taskestimate.date']=array('egt',$riqi);
        $where['zt_taskestimate.account']=$user;
        $where['zt_task.project']=$projet;
        $join='zt_taskestimate ON zt_taskestimate.task=zt_task.id';
        $var=M('task')->join($join)->where($where)->Sum('zt_taskestimate.consumed');
        $var=round($var, 2);
        if($var){
            return $var;
        }else{
           return 0; 
        }
        
    }
    
    function sunDateSorty($story,$date){
        $where['zt_task.id']=$story;
        $where['zt_taskestimate.date']=$date;
        $join='zt_taskestimate ON zt_taskestimate.task=zt_task.id';
        $data=M('task')->join($join)->where($where)->Sum('zt_taskestimate.consumed');
//         dump($where);
        $var=round($data, 2);
        if($var){
            return $var;
        }else{
            return '';
        }
    }
    
    function sumDateUserTask($user,$date){
        $where['account']=$user;
        $where['date']=$date;
        $data=M('taskestimate')->where($where)->Sum('consumed');
        $var=round($data, 2);
        if($var){
            return $var;
        }else{
            return '';
        }
    }
    
    
    /**
     * 根据stgeid获取列队数据
     */
    function getQueue($stageid){
        $m=M("tp_stagetester");
        $where['stageid']=$stageid;
        $arr=$m->where($where)->select();
        foreach ($arr as $ar){
           $str.='<li class="list-group-item">'
                . $ar['sn'].".【".$ar['type'].'】'.$ar['tester']
                .'<span class="badge">场景'.countExescene($ar['id']).'</span></li>';
        };       
        return $str;       
    }
    
    /**
     * 根据id获取工时明细
     * Test专用函数
     */
    function getTasktime($id){
        $m=D('taskestimate');
        $where=array("task"=>$id);
        $arr=$m->where($where)->select();    
        foreach ($arr as $ar){
            $str.='<li class="list-group-item">'
                .$ar['date']."&nbsp;剩余："
                .$ar['left']."&nbsp;&nbsp;消耗："
                .$ar['consumed']."&nbsp;&nbsp;"
                .$ar['work'].'</li>';       
        }    
        if($arr){
            return $str;
        }else{
            return '无记录' ;
        }    
    }
    /**
     * 根据用户获取工时明细
     * Test专用函数
     */
    
    function getTaskdoing($user){
        
        $where['zt_task.assignedTo']=$user;
        $where['zt_task.deleted']='0';    
        $where['zt_task.status']=array('neq','cancel');
        $m=D('task');
        $arr=$m->where($where)
        ->join('inner JOIN zt_taskestimate ON zt_task.id =zt_taskestimate.task')
        ->select();
        
        foreach ($arr as $ar){
            $str.='<li class="list-group-item"><span class="badge pull-left">'               
                .$ar['date']."</span>&nbsp;"
                .getProNo($ar['project'])."："
                .$ar['name']."【".getProst($ar['status'])."】&nbsp;剩余："
                .$ar['left']."&nbsp;&nbsp;消耗：".$ar['consumed']."&nbsp;&nbsp;".$ar['work'].'</li>';    
        }  
        if($arr){
            return $str;
        }else{
            return '无记录' ;
        }        
    }
    
    /**
     * 根据用户获取完成工时明细
     * Test专用函数
     */
    function getTaskfinish($user){    
        $where['zt_task.finishedBy']=$user;
        $where['zt_task.deleted']='0';
        $where['zt_task.status']=array('neq','cancel');
        $where['zt_task.assignedTo']='closed';
        $m=D('task');
        $arr=$m->where($where)
        ->join('inner JOIN zt_taskestimate ON zt_task.id =zt_taskestimate.task')
        ->order('zt_task.project,zt_task.story,zt_taskestimate.date')
        ->select();
        
        foreach ($arr as $ar){
            $str.='<li class="list-group-item"><span class="badge pull-left">'              
                .$ar['date']."</span>&nbsp;"
                .getProNo($ar['project'])."："
                .$ar['name']."&nbsp;&nbsp;【消耗："
                .$ar['consumed']."】&nbsp;&nbsp;"
                .$ar['work'].'</li>';   
        }    
        if($arr){
            return $str;
        }else{
            return '无记录' ;
        }                       
    }
