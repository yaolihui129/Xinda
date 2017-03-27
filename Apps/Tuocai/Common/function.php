<?php
// 根据id获取分类名
function getCatname($cateid){
    if ($cateid){
        $m=M('tc_cate');
        $data=$m->find($cateid);
        $str=getCatname($data['pid'])."-".$data['catname'];
        return $str;
    }else {
        return "|-";
    }
}

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
    $str.='【';
    $str.=getCusName(getTpid($data['teacherid']));
    $str.='】老师的《';
    $str.=getServiceName($data['courseid']);
    $str.='》<br>&nbsp; &nbsp;地点：';
    $str.=$data['address'];
    $str.='<span class="badge">';
    $str.=$data['state'];
    $str.='</span>';
    
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

/*
 * 根据dateid 获取排课信息
 * */
function countTeachPlan($teachclassid){
    $m=D('tc_plan');
    $where['teachclassid']=$teachclassid;
    $arr=$m->where($where)->count();
    return $arr['state'];
}

