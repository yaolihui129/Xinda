<?php
// 根据id获取分类名
function getCatname($cateid){
    if ($cateid){
        $m=M('as_cate');
        $data=$m->find($cateid);
        $str=getCatname($data['pid'])."-".$data['catname'];
        return $str;
    }else {
        return "|-";
    }
}


function selectCate($value="汽车保养") {
    $html = '<select name="textservice" class="form-control">';
    $m =M('as_cate');
    $where=array("pid"=>0,"state"=>"正常");
    $cats = $m->where($where)->order('sn')->select();
    foreach($cats as $cat) {
        $selected = ($cat['catname']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$cat['catname'].'">'.$cat['catname'].'</option>';
    }
    $html .='<select>';
    return $html;
}

