<?php
namespace TAdmin\Controller;
class ProsysController extends CommonController {
    public function index(){
        $_SESSION['proid']=I('proid');
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("code desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        $where=array("project"=>$_SESSION['proid']);
        $pp=M('projectproduct')->where($where)->find();

        $m = M('branch');
        $where=array("zt_tp_prosys.project"=>$_SESSION['proid'],"deleted"=>'0');
        $data=$m->where($where)->join('zt_tp_prosys ON zt_tp_prosys.branch =zt_branch.id')->order('zt_branch.sysno')->select();
        $this->assign("data",$data);
        foreach ($data as $sys){
            $a[]=$sys['branch'];
        }
        $this->assign('a',$a);
        if($a){           
            $map['id']=array('not in',$a);              
        }
        $map['product']=$pp['product'];
        $map['state']=0;
        $syses=$m->where($map)->select();
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
        $data=$m->where($where)->select();
        $this->assign('data',$data);           
    
        $this->display();
    }
    
    
    public function deployToReplica(){
        $_GET['sedanVersion']=getBuildVersion(I('id'));
        $_GET['moder']=$_SESSION['realname'];
        if (M('branch')->save($_GET)){
            $this->success("已成功部署到仿真环境！");
        }else{
            $this->error("部署失败！");
        }
    }
    
    public function deployToOnline(){
        $m=M('branch');
        $arr=$m->find(I('id'));
        $_GET['id']=I('id');
        $_GET['realVersion']=$arr['sedanversion'];
        $_GET['moder']=$_SESSION['realname'];
//         dump($_GET);
        if ($m->save($_GET)){
            $this->success("已成功部署到生产环境！");
        }else{
            $this->error("部署失败！");
        }
        
    }
   
    
}