<?php
// 根据id获取分类名
function getCatname($cateid){
    if ($cateid){
        $data=M('xl_cate')->find($cateid);
        $str=getCatname($data['pid'])."-".$data['catname'];
        return $str;
    }else {
        return "|-";
    }
}
