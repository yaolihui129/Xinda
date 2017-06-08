<?php
namespace TAdmin\Controller;
class ProsysController extends CommonController {
    public function index(){
        $_SESSION['proid']=I('proid');
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        $where=array("project"=>$_SESSION['proid']);
        $pp=M('projectproduct')->where($where)->find();

        $m = M('branch');
        $where=array("zt_tp_prosys.project"=>$_SESSION['proid']);
        $data=$m->where($where)->join('zt_tp_prosys ON zt_tp_prosys.branch =zt_branch.id')
        ->order('zt_branch.sysno')->select();
        $this->assign("data",$data);
        
        $map['product']=$pp['product'];
        $syses=$m->where($map)->order('sysno')->select();
        $this->assign('syses',$syses);

	    $this->display();
    }


    public function insert(){
        $m=D('tp_prosys');
        $_GET['moder']=$_SESSION['realname'];
        if(!$m->create($_GET)){
            $this->error($m->getError());
        }
        if($m->add($_GET)){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }
    public function mod(){
        $m=M('branch');
        $sys=$m->find($_GET['id']);
        $this->assign('sys',$sys);
    
        $where['product']=$sys['product'];
        $data=$m->where($where)->select();
        $this->assign('data',$data);           
    
        $this->display();
    }
    
    

   
    
}