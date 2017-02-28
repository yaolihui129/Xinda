<?php
namespace TAdmin\Controller;
class StagetesterController extends CommonController {
   public function index(){
        /* 接收参数*/
        $stageid=$_GET['stageid'];
        $proid=$_SESSION["proid"];
        $type=$_GET['type'];
        /* 实例化模型*/
        $m=D('tp_stage');
        $where=array("proid"=>$proid);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);
        
        /* 实例化模型*/
        $m=D('tp_stagetester');
        $where=array("stageid"=>$stageid,"type"=>$type);
        $testers=$m->where($where)->select();
        $this->assign('testers',$testers);
        $this->assign('type',$where);
        /* 实例化模型*/
        $m=D('user');
        $where['usergp']="PJD";
        $users=$m->where($where)->order("usergp")->select();
        $this->assign('users',$users);
                       
        $this->display();
    }


    public function insert(){
        /* 实例化模型*/
        $m=D('tp_stagetester');
        $where=array("stageid"=>$_GET['stageid'],"type"=>$_GET['type']);
        $_GET['sn']=$m->where($where)->count()+1;
        $_GET['moder']=$_SESSION['realname'];

        if(!$m->create($_GET)){
            $this->error($m->getError());
        }
        $lastId=$m->add($_GET);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }
  
    public function order(){
        /* 实例化模型*/
        $db = D('tp_stagetester');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }

}