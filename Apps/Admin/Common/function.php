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
    
    