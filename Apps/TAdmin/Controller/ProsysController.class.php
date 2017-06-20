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
        $data=$m->where($where)->join('zt_tp_prosys ON zt_tp_prosys.branch =zt_branch.id')->order('zt_branch.sysno')->select();
        $this->assign("data",$data);
        foreach ($data as $sys){
            $a[]=$sys['branch'];
        }
        $this->assign('a',$a);
        
        $map['product']=$pp['product'];
        $map['state']=0;
        $map['id']=array('not in',$a);
        $syses=$m->where($map)->order('sn')->select();
        $this->assign('syses',$syses);       
        
	    $this->display();
    }


    public function insert(){        
        $m=D('tp_prosys');
        $where=array('branch'=>I('branch'),'project'=>$_SESSION['proid']);
        $arr=$m->where($where)->find();
        if($arr){
            $this->error("无需重复关联");
        }else {
            $_GET['project']=$_SESSION['proid'];
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
    }
    
    public function mod(){
        $m=M('branch');
        $sys=$m->find(I('id'));
        $this->assign('sys',$sys);
    
        $where['product']=$sys['product'];
        $where['state']=0;
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);           
    
        $this->display();
    }
    
    

   
    
}