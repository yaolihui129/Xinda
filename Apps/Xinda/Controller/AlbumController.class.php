<?php
namespace Xinda\Controller;
class AlbumController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    public function album4(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
    
    public function album13(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->display();
    }
    
}