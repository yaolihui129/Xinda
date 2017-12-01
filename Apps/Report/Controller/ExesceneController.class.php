<?php
namespace Report\Controller;
class ExesceneController extends WebInfoController {
    public function index(){
        $arr=D("tp_exescene")->find(I('id'));
        $this->assign('arr',$arr);       
    }
       
}