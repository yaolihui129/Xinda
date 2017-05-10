<?php
namespace Test\Controller;
class RulesController extends WebInfoController {

  public function index(){
     /* 接收参数*/
     $funcid=$_GET['funcid'];
     /* 实例化模型*/
     $m=D('tp_func');
     $arr=$m->find($funcid);
     $this->assign('arr',$arr);

     $where['pathid']=$arr['pathid'];
     $data=$m->where($where)->order('sn,id')->select();
     $this->assign('data',$data);
        
     $m=D('tp_rules');
     $where['funcid']=$funcid;
     $rules=$m->where($where)->select();
     $this->assign('rules',$rules);

    $this->display();
  }
  public function prorules(){
      /* 接收参数*/
      $proid=$_GET['proid'];
      $_SESSION['proid']=$proid;
      /* 实例化模型*/
      $m=D('project');
      $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($proid);
      $this->assign('arr',$arr);
      
      $m=M('branch');
      $where=array("zt_tp_func.fproid"=>$proid);
      $data=$m->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
      ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')->where($where)
      ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")->select();
      $this->assign('data',$data);
      
      $this->display();
      
  }
  


}