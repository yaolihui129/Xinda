<?php
namespace Report\Controller;
class StageController extends WebInfoController {
    public function index(){
        $_SESSION['proid']= I('proid');
        $where=array("project"=>I('proid'),"deleted"=>'0');
        $data=M("testtask")->where($where)->order("end,id")->select();
        $this->assign('data',$data);

        $this->display();
    }
    
}