<?php
/**
 * 根据proid获取需求规则数
 */
function countRules($proid){
    $m=M("tp_rules");
    $where=array("proid"=>$proid);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 获取规则数
 */
function countPRules($proid){
    $m=M("tp_rules");
    $where=array("fproid"=>$proid);
    $count=$m->where($where)->count();
    return $count;
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
 * 根据funcid获取规则数据
 */
function getRules($funcid){
    $m=D("tp_rules");
    $where['funcid']=$funcid;
    $arr=$m->where($where)->order("sn,id")->select();
    foreach ($arr as $ar){
        $str.='<li class="list-group-item">'
                . $ar['sn'].".".$ar['rules']."【".$ar['source']."】"
                .'<span class="badge">'.$ar['state'].'</span>
               </li>';
    };
    if($arr){
        return $str;
    }else{
        return '无';
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
