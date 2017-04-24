<?php
    //显示是否在首页展示信息
    function getIstj($istj){
        if ($istj==1){
            return "首页";
        }else {
            return "非首页";
        }
    }
    //发布状态
    function getXState($state){
        if ($state=='5'){
            return '<span class="label label-success pull-right">已发布</span>';
        }elseif ($state=='1'){
            return '<span class="label label-info pull-right">未发布</span>';
        }else{
            return '<span class="label label-default pull-right">已下线</span>';
        }       
    }
    //分类下的产品数
    function getCatePordNum($cateid){
        $where=array('cateId'=>$cateid);
        $data=M('tp_product')->where($where)->count();
        return $data;
    }
    
    