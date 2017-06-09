<?php
namespace TAdmin\Controller;
class StagetesterController extends CommonController {
   public function index(){
        $where=array("proid"=>$_SESSION["proid"]);
        $data=M('tp_stage')->where($where)->order("sn")->select();
        $this->assign('data',$data);
        
        $where=array("stageid"=>I('stageid'),"type"=>I('type'));
        $testers=M('tp_stagetester')->where($where)->select();
        $this->assign('testers',$testers);
        $this->assign('type',$where);

        $where=array('usergp'=>"PJD",'deleted'=>'0');
        $users=M('user')->where($where)->order("usergp")->select();
        $this->assign('users',$users);
                       
        $this->display();
    }


    public function insert(){
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

}