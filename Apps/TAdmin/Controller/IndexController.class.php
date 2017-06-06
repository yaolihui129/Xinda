<?php
namespace TAdmin\Controller;
use Think\Controller;
class IndexController  extends WebInfoController{

    
    public function index(){
        /* 接收参数*/
        $_SESSION['proid']=$_GET['proid'];
        /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp']);
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);
        
        /* 实例化模型*/
        $m = D("tp_stage");
        $where=array("proid"=>$_SESSION['proid']);
        $stages=$m->where($where)->order("sn,id")->select();
        $this->assign("stages",$stages);
        
        /* 阶段添加*/
        $count=$m->where($where)->count()+1;
        $this->assign('c',$count);
        $this -> assign("state", formselect("未开始","state","prost"));
        $end=date("Y-m-d",time()+1*24*3600);
        $this->assign('end',$end);
        
        $this->theme($_SESSION['theme'])->display();
    }
    
    public  function test(){
        $_SESSION['ip']= get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
             
        $this->theme($_SESSION['theme'])->display();
    }
}