<?php
namespace Report\Controller;
class RiskController extends WebInfoController {
  public function index(){
        $arr=M('project')->find(I('proid'));
        $this->assign('arr',$arr);
        
        $where=array("proid"=>I('proid'));
        $data=M("tp_risk")->where($where)->select();
        $this->assign("data",$data);
        
        $this->assign('w',$where);

        $this->display();
    }

}