<?php
namespace Test\Controller;
class SceneController extends WebInfoController {
   public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($proid);
        $this->assign('arr',$arr);
        
        $m = D("tp_scene");
        $where['proid']=$proid;
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign("data",$data);

        $this->display();
    }
       
}