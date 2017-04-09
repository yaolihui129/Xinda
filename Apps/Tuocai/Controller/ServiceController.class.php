<?php
namespace Tuocai\Controller;
class ServiceController extends WebInfoController {
    public function Index(){
        getWebInfo(C('PRODUCT'));//获取网页信息           
        $arr=M('tc_prodservice')->find($_GET['id']);
        $this->assign('arr',$arr);                
        $this->display();
    }
   
}