<?php
namespace Tpyjd\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $m=D('city');
        $this->display();
    }
    
       
}