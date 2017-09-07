<?php
namespace Xinda\Controller;
class TestController extends WebInfoController {
    public function index(){
        $arr=I('id','1');
        $m=M('tp_credit');
        dump($m);
        
    }
    
}