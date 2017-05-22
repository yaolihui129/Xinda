<?php
namespace Xinda\Controller;
class GameController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function feiji(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function wzq(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function txz(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
}