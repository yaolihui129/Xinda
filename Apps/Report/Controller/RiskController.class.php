<?php
namespace Report\Controller;
class RiskController extends WebInfoController {
  public function index(){
        $_SESSION['proid']= I('proid');
        
        $where=array("proid"=>I('proid'));
        $data=M("tp_risk")->where($where)->select();
        $this->assign("data",$data);
        
        $this->assign('w',$where);

        $this->display();
    }

}