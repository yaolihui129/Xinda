<?php
namespace Anshun\Controller;
class ServiceController extends WebInfoController {    
    public function _empty(){    
        $this->display('index');
    }
    public function index(){
        WebInfoController::getWebInfo(); //获取页面信息        
        $arr=D('as_prodservice')->find($_GET['id']);
        $this->assign('arr',$arr);       
        $this->display();
    } 
}