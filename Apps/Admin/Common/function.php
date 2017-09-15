<?php
    //显示是否在首页展示信息
    function getIstj($istj){
        if ($istj==1){
            return '【<i class="icon-thumbs-up"> 推荐</i>】';
        }else {
            return ;
        }
    }
    //发布状态
    function getXState($state){
        if ($state=='5'){
            return '<span class="label label-success">已发布</span>';
        }elseif ($state=='1'){
            return '<span class="label label-info">未发布</span>';
        }else{
            return '<span class="label label-default">已下线</span>';
        }       
    }
    //分类下的产品数
    function getCatePordNum($cateid){
        $where=array('cateId'=>$cateid);
        $data=M('tp_product')->where($where)->count();
        return $data;
    }
    
    function getQz($prodid){
        $data=M('product')->find($prodid);
        return $data['qz'];
    }
    
    function deptselect($value,$name="dept") {
        $where=array("isDelete"=>0,'prodid'=>$_SESSION['prodid']);
        $cats = M('tp_dept')->where($where)->order('sn')->select();
        $html = '<select name="'.$name.'" class="form-control">';
        foreach($cats as $v) {
            $selected = ($v['id']==$value) ? "selected" : "";
            $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['name'].'</option>';
        }
        $html .='<select>';
        return $html;
    }
    
    function sysselect($value,$name="sysid") {
        $where['delete']='0';
        $prodid=array(12,$_SESSION['prodid']);
        $where['product']=array('in',$prodid);
        $cats = M('branch')->where($where)->order('id')->select();
        $html = '<select name="'.$name.'" class="form-control">';
        foreach($cats as $v) {
            $selected = ($v['id']==$value) ? "selected" : "";
            $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['name'].'</option>';
        }
        $html .='<select>';
        return $html;
    }
    
    