<?php
namespace TAdmin\Controller;

class ProsysController extends CommonController {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
        $gp=$_SESSION['testgp'];
        /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>"$gp","deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);
        
        $m=D('projectproduct');
        $where=array("project"=>$proid);
        $pp=$m->where($where)->find();

        $m = D('branch');
        $where=array("zt_tp_prosys.project"=>$proid);
        $data=$m->where($where)->join('zt_tp_prosys ON zt_tp_prosys.branch =zt_branch.id')
        ->order('zt_branch.sysno')->select();
        $this->assign("data",$data);
        
        $map['product']=$pp['product'];
        $syses=$m->where($map)->order('sysno')->select();
        $this->assign('syses',$syses);

	    $this->display();
    }


    public function insert(){
        /* 接收参数*/

        $m=D('tp_prosys');
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
    public function mod(){
    
        /* 实例化模型*/
        $m=M('branch');
        $sys=$m->find($_GET['id']);
        $this->assign('sys',$sys);
    
        $where['product']=$sys['product'];
        $data=$m->where($where)->select();
        $this->assign('data',$data);
    
        $where['proid']=$_GET['proid'];
        $this->assign('w',$where);
    
        $this->display();
    }
    
    public function update(){
        /* 实例化模型*/
        $db=D('branch');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("成功");
        }else{
            $this->error("失败");
        }
    
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_prosys');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('成功');
        }else{
            $this->error('失败');
        }
    }
    
    public function _empty(){
    
        $this->display('index');
    }
    
}