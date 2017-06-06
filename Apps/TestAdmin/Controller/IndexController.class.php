<?php
namespace TestAdmin\Controller;
use Think\Controller;
class IndexController  extends CommonController{  
    public function index(){
        
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
            
        $_SESSION['proid']=I('proid',$pros[0]['id']);
        $this->assign("pros",$pros);

        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);
        
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
        
        $this->display();
    }
    
    
    
}