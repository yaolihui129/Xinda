<?php
namespace Xinda\Controller;
class PicController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function pic1(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function pic2(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function pic517(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }


    

}