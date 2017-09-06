<?php
namespace Xinda\Controller;
class AlbumController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }

    public function album6(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    public function album8(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    public function album9(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
    public function album12(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
    public function album13(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        $this->display();
    }
    
}