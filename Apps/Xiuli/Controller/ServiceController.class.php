<?php
namespace Xiuli\Controller;
class ServiceController extends WebInfoController {
    public function index(){
       getWebInfo(C('PRODUCT'));//获取网页信息                                     
       $arr=D('xl_prodservice')->find($_GET['id']);
       $this->assign('arr',$arr);                
       $this->display();
    }      
}