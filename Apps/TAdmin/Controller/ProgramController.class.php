<?php
namespace TAdmin\Controller;
class ProgramController extends CommonController {
    public function index(){
        $_SESSION['testgp']=I('testgp',$_SESSION['testgp']);
        $data=M('dict')->where(array("type"=>"testgp","state"=>"正常"))->field("id,k,v,state")->select();
        $this->assign('data',$data);

        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $arr=M('project')->where($where)->order("end desc")->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->select();
        $this->assign('arr',$arr);
        $this->assign('w',$where);
dump($_SESSION);
	     $this->display();
    }

   public function search(){
       /* 接收参数*/
       $testgp=$_POST['testgp'];
       $search=$_POST['search'];
       $m=M('dict');
       $where=array("type"=>"testgp","state"=>"正常");
       $data=$m->where($where)->select();
       $this->assign('data',$data);  
       /* 实例化模型*/
       $m=M('project');        
       $map['name|code']=array('like','%'.$search.'%'); 
       $map['acl']='private';
       $map['deleted']='0';
       $arr=$m->where($map)->order("end desc")->select();
       $this->assign('arr',$arr);
   
       $where=array("search"=>$search);
       $this->assign('w',$where);
   
   
       $this->display('index');
           
   }

}