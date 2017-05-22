<?php
namespace Xinda\Controller;
class PicController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }

    public function pic0517(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }


    public function album13(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }

}