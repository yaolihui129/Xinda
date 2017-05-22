<?php
namespace Xinda\Controller;
class NavController extends WebInfoController {
    
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function nav1(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    
    public function nav0603(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
}