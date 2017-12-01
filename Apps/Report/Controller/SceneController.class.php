<?php
namespace Report\Controller;
class SceneController extends WebInfoController {
   public function index(){
        $arr=D('project')->find(I('proid'));
        $this->assign('arr',$arr);

        $where['proid']=I('proid');
        $data=D("tp_scene")->where($where)->order('sn,id')->select();
        $this->assign("data",$data);

        $this->display();
    }
       
}