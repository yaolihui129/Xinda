<?php
    function taskInfo($task){
        $where=array('deleted'=>'0');
        $arr=M('task')->where($where)->find($task);
        $str="【".getProNo($arr['project']).'】'.getProname($arr['project']).'【'.taskLastUpdateDate($arr['id']).'】'
            .'<span class="label label-default">'.getProst($arr['status'])."</span>"
            .'<br><br>'.$arr['id'].':'.$arr['name'];
        return $str;
    }
    function countStoryCase($storyid){
        $where['story']=$storyid;
        $where['deleted']='0';
        $data=M('case')->where($where)->count();
        return $data;
    }
    
    function countStorySmokeCase($storyid){
        $where['story']=$storyid;
        $where['deleted']='0';
        $where['pri']=1;
        $data=M('case')->where($where)->count();
        return $data;
    }
    
    function countCaseStep($caseid,$version=1){
        $where['case']=$caseid;
        $where['version']=$version;
        $where['deleted']='0';
        $data=M('casestep')->where($where)->count();
        return $data;
        
    }
    
    function countSmokeCase($proid){
        $where=array("zt_projectstory.project"=>$proid, 'zt_case.pri'=>1,'zt_case.deleted'=>'0');
        $count=M('projectstory')->where($where)     
        ->join('zt_case ON zt_case.story =zt_projectstory.story')
        ->count();
        return $count;
    }
    function countProCase($proid){
        $where=array("zt_projectstory.project"=>$proid, 'zt_case.deleted'=>'0');
        $count=M('projectstory')->where($where)     
        ->join('zt_case ON zt_case.story =zt_projectstory.story')
        ->count();
        return $count;
    }
    

    function countTesttask($proid){
        $where=array("project"=>$proid,"deleted"=>"0");
        $count=M("testtask")->where($where)->count();
        return $count;
    }
    
    function countProTask($proid){
        $where=array("project"=>$proid,"type"=>"test","deleted"=>"0");
        $count=M("task")->where($where)->count();
        return $count;
    }
    
    function countProCaseResult($proid){
        $where=array("zt_projectstory.project"=>$proid, 'zt_case.deleted'=>'0');
        $count=M('projectstory')->where($where)
        ->join('zt_case ON zt_case.story =zt_projectstory.story')
        ->join('zt_testresult ON zt_testresult.case=zt_case.id')
        ->count();
        return $count;
    }
    

    
    function getCaseStep($caseid,$version=1){
        $where=array('case'=>$caseid,'version'=>$version);
        $data=M('casestep')->where($where)->select();
        $str.='<ul>';
        foreach ($data as $k=>$ar){
            $str.='<li>';
            $str.=   ($k+1).'.'. $ar['desc'].'-<b>预期:</b>'.$ar['expect'];
            $str.='</li>';
        }
        $str.='</ul>';
        if ($data){
            return $str;
        }else {
            return ;
        }
            
        
    }
    
    function getStoryCase($storyid){
        $where=array('story'=>$storyid,'deleted'=>'0');
        $data=M('case')->where($where)->select();
        $str.='<ul class="list-group">';
        foreach ($data as $ar){           
            $str.='<li class="list-group-item">CaesID:';
            $str.=    $ar['id'].'-'.$ar['title'].'【步骤：'.countCaseStep($ar['id'],$ar['version']);
            $str.=    '】最后执行结果：'.$ar['lastrunresult'];
            $str.='<span class="badge">'.getZTUserName($ar['openedby']).':'.$ar['lastediteddate'].'</span><br>前置条件：'.$ar['precondition'];
            $str.=getCaseStep($ar['id'],$ar['version']);
            $str.='</li>';
        }
        $str.='</ul>';
        return $str;
    }



    function countProBuild($proid){
        $where['project']=$proid;
        $where['deleted']='0';
        $data=M("build")->where($where)->count();
        return $data;
        
    }
    
    function getProBuild($branch){
        $where=array('branch'=>$branch,'project'=>$_SESSION['proid'],'deleted'=>'0');
        $data=M('build')->where($where)->select();
        $str.='<ul class="list-group">';
        foreach ($data as $ar){
            $str.='<li class="list-group-item">';
            $str.=    $ar['id'].'-'.$ar['name'];
            $str.='<span class="badge">'.getZTUserName($ar['builder']).'</span>';
            $str.='</li>';
        }
        $str.='</ul>';
        return $str;
    }
    
    
    function getStorySmokeCase($storyid){
        $where=array('story'=>$storyid,'pri'=>1,'deleted'=>'0');
        $data=M('case')->where($where)->select();
        $str.='<ul class="list-group">';
        foreach ($data as $ar){
            $str.='<li class="list-group-item">CaesID:';
            $str.=    $ar['id'].'-'.$ar['title'].'【步骤：'.countCaseStep($ar['id'],$ar['version']);
            $str.=    '】最后执行结果：'.$ar['lastrunresult'];
            $str.='<span class="badge">'.getZTUserName($ar['openedby']).':'.$ar['lastediteddate'].'</span><br>前置条件：'.$ar['precondition'];
            $str.=getCaseStep($ar['id'],$ar['version']);
            $str.='</li>';
        }
        $str.='</ul>';
        return $str;
    }
    
    function taskWorkTime($task){
        $where=array('deleted'=>'0');
        $arr=M('task')->where($where)->find($task);
        return '预估：'.$arr[estimate].',消耗：'.$arr[consumed].',剩余：'.$arr[left];
    }
    function countTaskWorkTime($account){      
        $riqi=date("Y-m-d",time()-7*24*3600);
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
        $riqi=date("Y-m-d",time()-7*24*3600);
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
