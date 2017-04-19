<?php
namespace Runzhu\Controller;
class ServiceController extends WebInfoController {
    public function index(){
       $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息 
        
        $m=D('tp_product');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);      
        
        $this->display();
    }

}