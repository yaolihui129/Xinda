<?php

//根据id获取产品名
function getProd($id){
    if ($id){
        $data=M('product')->find($id);
        return $data['name'];
    }else {
        return ;
    }
}

//根据pid获取分类数
function countCate($pidCateId){
    $where=array('pidCateId'=>$pidCateId);
    $data=M('tp_cate')->where($where)->count();
    return $data;        
}

function getCatname($cateid){
    if ($cateid){
        $m=M('tp_cate');
        $data=$m->find($cateid);
        $str=getCatname($data['pidcateid'])."-".$data['catname'];
        return $str;
    }else {
        return "|-";
    }
}

//显示是否在首页展示信息
function getIstj($istj){
    if ($istj==1){
        return "首页";
    }else {
        return "非首页";
    }
}


// 显示是否该尕布
function getXState($state){
    if ($state=='发布'){
        return "下线";
    }else{
        return "发布";
    }
    
}

//获取手机号
function getPhone($id){
    if($id){
        $m=M('tp_customer');
        $data=$m->find($id);
        return $data['phone'];
    }else{
        return ;
    }
}

//获取姓名
function getCRealname($id){
    if($id){
        $m=M('tp_customer');
        $data=$m->find($id);
        return $data['realname'];
    }else{
        return ;
    }
}
