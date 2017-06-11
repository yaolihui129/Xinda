<?php
namespace Test\Controller;
class StageController extends WebInfoController {
    public function index(){
        $arr=D('project')->find(I('proid'));
        $this->assign('arr',$arr);        

        $where=array("proid"=>I('proid'));
        $data=D("tp_stage")->where($where)->order("sn,id")->select();
        $this->assign('data',$data);

        $this->display();
    }
    
}