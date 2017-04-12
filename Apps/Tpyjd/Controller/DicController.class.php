<?php
namespace Tpyjd\Controller;
class DicController extends WebInfoController {
    public function index(){
        $m=M('dictmap');
        $data=$m->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
       
}