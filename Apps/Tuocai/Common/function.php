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
