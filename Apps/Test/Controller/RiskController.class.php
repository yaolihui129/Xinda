<?php
namespace Test\Controller;
class RiskController extends WebInfoController {
  public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($proid);
        $this->assign('arr',$arr);
        
        $m = D("tp_risk");
        $where=array("proid"=>$proid);
        $data=$m->where($where)->select();
        $this->assign("data",$data);
        
        $this->assign('w',$where);

        $this->display();
    }

}