<?php
namespace Xinda\Controller;
class ChoujController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
    public function baox(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
    public function choujnum(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
    public function lhjnum(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
    public function ggk(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
}