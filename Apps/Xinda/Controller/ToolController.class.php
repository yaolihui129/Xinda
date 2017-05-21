<?php
namespace Xinda\Controller;
class ToolController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }

    public function jsq1(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    public function jsq2(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }

}