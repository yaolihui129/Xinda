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


