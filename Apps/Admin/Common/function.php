<?php
    //显示是否在首页展示信息
    function getIstj($istj){
        if ($istj==1){
            return "首页";
        }else {
            return "非首页";
        }
    }
    // 显示是否该发布
    function getXState($state){
        if ($state=='5'){
            return "下线";
        }else{
            return "发布";
        }       
    }
    
    