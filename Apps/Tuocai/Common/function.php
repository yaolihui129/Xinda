<?php

function selectCate($value="小学课程") {
    $html = '<select name="coursetype" class="form-control">';
    $m =M('tc_cate');
    $where=array("pid"=>0,"state"=>"正常");
    $cats = $m->where($where)->order('sn')->select();
    foreach($cats as $cat) {
        $selected = ($cat['catname']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$cat['catname'].'">'.$cat['catname'].'</option>';
    }
    $html .='<select>';
    return $html;
}


function selectType($v="学生"){
    $selected = ($v==$value) ? "selected" : "";
    $html = '<select name="type" class="form-control">';
    $value="学生";
    $html .= '<option '.$selected.' value='.$value.'>学生</option>';
    $value="助教";
    $html .= '<option '.$selected.' value='.$value.'>助教</option>';
    $value="老师";
    $html .= '<option '.$selected.' value='.$value.'>老师</option>';
    $html.='<select>';
    return $html;
}


//获取课程信息
function getServiceName($id){
    $m =M('tc_prodservice');
    $arr=$m->find($id);
    return $arr['name'];
    
}


//根据id 获取老师信息
function getTeacher($id){
    $m=M('customer');
    $where['isteacher']=1;
    $data=$m->where($where)->find($id);

    return $data['realname']."(".$data['phone'].")";
}


//根据id获取客户姓名

function getTpid($id){
    if($id){
        $m=D('tc_customer');
        $arr=$m->find($id);
        
        return $arr['tpid'];
    }
}

//根据teachclassid获取课程信息

function getTeachclassInfo($teachclassid){
    
    $m=M('tc_teachclass');
    $data=$m->find($teachclassid);
    //拼接字符串
    $str.='【'.getCusName(getTpid($data['teacherid'])).'】老师的《'.getServiceName($data['courseid']).'》<br>';
    $str.='&nbsp; &nbsp;地点：'.$data['address'];
    $str.='<span class="badge">'.$data['state'].'</span>';
   
    return $str;
    
}
//根据dateid 获取排课信息
function getPlan($dateid){
    $m=D('tc_plan');
    $where['zt_tc_plan.dateid']=$dateid;
    $arr=$m->where($where)
    ->join('zt_tc_teachclass ON zt_tc_plan.teachclassid =zt_tc_teachclass.id')
    ->select();

    if($arr){
        foreach ($arr as $ar){
            $str.='<li class="list-group-item">';
            $str.=      getTeachclassInfo($ar['teachclassid']);
            $str.= '</li>';
        };
        return $str;
    }else{
        return "暂无安排课程";
    }
}

/*
 * 根据dateid 获取排课信息
 * */
function countPlan($dateid){
    $m=D('tc_plan');
    $where['dateid']=$dateid;
    $arr=$m->where($where)->count();
    return $arr;
}

//根据teachclassid 获取排课信息
function getTeachPlan($teachclassid){
    $m=D('tc_plan');
    $where['zt_tc_plan.teachclassid']=$teachclassid;
    $arr=$m->where($where)
    ->join('zt_tc_teachclass ON zt_tc_plan.teachclassid =zt_tc_teachclass.id')
    ->select();
    if($arr){
        foreach ($arr as $ar){
            $str.='<li class="list-group-item">';
            $str.=      $ar['teachclassid']."老师的【".$ar['course']."】课程,上课地点：".$ar['adress'] ;
            $str.= '</li>';
        };
        return $str;
    }else{
        return "暂无课程";
    }
}

//根据dateid 获取排课信息
function countTeachPlan($teachclassid){
    $m=D('tc_plan');
    $where['teachclassid']=$teachclassid;
    $arr=$m->where($where)->count();
    return $arr['state'];
}

