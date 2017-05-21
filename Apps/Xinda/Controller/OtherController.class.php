<?php
namespace Xinda\Controller;
class OtherController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function other53(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
}