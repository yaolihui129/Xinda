<?php
namespace TAdmin\Controller;
class BranchController extends CommonController {
    

    public function index(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $_SESSION['proid']=null;
        /* 实例化模型*/
        $p=M('product');
        $arr=$p->select();
        $this->assign('data',$arr);
      
        /* 实例化模型*/
        $m=M('branch');
        $where=array(prodid=>$prodid);
        $syses=$m->where($where)->order('sysno')->select();
        $this->assign('syses',$syses);
        $this->assign('w',$where);
    
        $this->display();
    }
    
    public function mod(){
    
        /* 实例化模型*/
        $m=M('branch');
        $sys=$m->find($_GET['id']);
        $this->assign('sys',$sys);
    
        $where['prodid']=$sys['prodid'];
        $syses=$m->where($where)->select();
        $this->assign('data',$syses);
    
        $where['proid']=$_GET['proid'];
        $this->assign('w',$where);
    
        $this -> assign("state", formselect($sys['state']));
        $this->display();
    }
    
    public function update(){
        /* 实例化模型*/
        $db=D('branch');   
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功",U("Prosys/index?proid={$_POST['proid']}"));
        }else{
            $this->error("修改失败！");
        }
    
    }
    
    public function test(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $where=array("prodid"=>$prodid,"proid"=>$proid);
        $this->assign('w',$where);
    
        /* 实例化模型*/
        $m=M('branch');
        if(empty($_GET['prodid'])){
            $s=M('program')->find($proid);
            $prodid=$s['prodid'];
            $where=array("prodid"=>$prodid);
        }
        $syses=$m->where($where)->select();
        $this->assign('data',$syses);
        $sys=$m->find($id);
        $this->assign('sys',$sys);
    
        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
    
}