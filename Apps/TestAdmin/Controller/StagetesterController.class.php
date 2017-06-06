<?php
namespace TestAdmin\Controller;
class StagetesterController extends CommonController {
   public function index(){
        $where=array("proid"=>$_SESSION["proid"]);
        $data=M('tp_stage')->where($where)->order("sn")->select();
        $this->assign('data',$data);

        $where=array("stageid"=>I('stageid'),"type"=>I('type'));
        $testers=D('tp_stagetester')->where($where)->select();
        $this->assign('testers',$testers);
        $this->assign('type',$where);
        
        $where['usergp']="PJD";
        $users=D('user')->where($where)->order("usergp")->select();
        $this->assign('users',$users);
                       
        $this->display();
    }


    public function insert(){
        $m=D('tp_stagetester');
        $where=array("stageid"=>I('stageid'),"type"=>I('type'));
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