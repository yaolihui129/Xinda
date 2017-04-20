<?php
//根据车辆ID获取维修记录
function getServicelist($carid){
    $m=M('order_serviccar');
    $where[carid]=$carid;
    $data=$m->where($where)->order('ctime desc')->select();
    $str.='<br><br><ul class="list-group">';
    foreach ($data as $ar){
        $str.='<li class="list-group-item">';
        $str.=    $ar['sdate'].':'.getProduct($ar['prodid']).$ar['typy'].$ar['textservice'].'&nbsp;里程数：'.$ar['odograph'];
        $str.= '</li>';
    }
    $str.='</ul>';
    if ($data){
        return $str;
    }else {
        return "暂时还没有维修保养记录";
    }

}

//根据车辆ID获取车牌号
function getCarinfo($carid){
    $m=D('car');
    $data=$m->find($carid);
    $str=$data['plateno']."&nbsp;".$data['type']."&nbsp;【".$data['color']."】";
    if($data){
        return $str;
    }else{
        return "没有车牌信息";
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

