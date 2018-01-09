<?php
namespace Report\Controller;
class BugController extends WebInfoController {
    public function index(){  
        $_SESSION['proid']= I('proid');
        $where=array("project"=>I('proid'),"deleted"=>'0');
        $m=M("bug");
        $data=$m->where($where)->order('status,id')->select();
        $this->assign('data',$data);    
              
        $var=$m->where($where)->field("openedBy,count(id)")->group('openedBy')->order('count(id) desc')->select();       
        $this->assign('var',$var);
        $var=$m->where($where)->field("resolvedBy,count(id)")->group('resolvedBy')->order('count(id) desc')->select();
        $this->assign('var1',$var);
        $var=$m->where($where)->field("closedBy,count(id)")->group('closedBy')->order('count(id) desc')->select();
        $this->assign('var2',$var);
        $var=$m->where($where)->field("module,count(id)")->group('module')->order('count(id) desc')->select();
        $this->assign('var3',$var);
        $var=$m->where($where)->field("assignedTo,count(id)")->group('assignedTo')->order('count(id) desc')->select();
        $this->assign('var4',$var);
        $var=$m->where($where)->field("openedBuild,count(id)")->group('openedBuild')->order('id desc')->select();
        $this->assign('var5',$var);
        $this->display();
    }
    
    
    function unconfirmed(){

        $where['status']="active";
        $where['confirmed']=0;
        $where['deleted']='0';
        $datum=date("Y-m-d",time()-24*3600);
        $datum=strtotime($datum);
        $datum=date("Y-m-d H:i",$datum+17.5*3600);
        $where['openedDate']  = array('lt',$datum);
        $m=M("bug");
        $data=$m->where($where)->order('openedDate')->select();
        $this->assign('data',$data);
       
        
        
        $this->display();
    }
    
    function punish(){
        $where=array("state"=>"待处理");
        $m=M("tp_punish");
        $data=$m->where($where)->order('status,id')->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    function noregress(){
        $where['status']="resolved";
        $where['deleted']='0';
        $datum=date("Y-m-d",time()-24*3600);
        $datum=strtotime($datum);
        $datum=date("Y-m-d H:i",$datum+17.5*3600);
        $where['resolvedDate']  = array('lt',$datum);
        $user=array('yaolihui','fanqiao','menghuihui');//只看这些人员
        $where['assignedTo']=array('in',$user);
        $data=M("bug")->where($where)->order('resolvedDate')->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    function activated(){
        $where['deleted']='0';
        $where['activatedCount']  = array('gt',0);
        $where['openedDate']  = array('gt','2018-1-8 00:00:00');
        
        $data=M("bug")->where($where)->order('openedDate desc,activatedDate desc')->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    function fault(){
        $where['deleted']='0';
        $where['severity']  =1;  
        $where['openedDate']  = array('gt','2018-1-8 00:00:00');
        $data=M("bug")->where($where)->order('openedDate')->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
}