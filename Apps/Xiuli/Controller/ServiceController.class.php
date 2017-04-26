<?php
namespace Xiuli\Controller;
class ServiceController extends WebInfoController {
    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息  
        
        $arr=M('tp_product')->find($_GET['id']);
        $this->assign('arr',$arr);   
        
        $this->display();
    }      
}