<?php
namespace Report\Controller;
class TaskController extends WebInfoController {
    public function index(){
        $users=M('user')->where(array("deleted"=>'0',"usergp"=>'YX'))->field("account,realname")->order('account desc')->select();
        $this->assign('users',$users);
        
        $_SESSION['taskAccount']=I('account',$users[0]['account']);
        $riqi=date("Y-m-d",time()-9*24*3600);
        $map['date']  = array('egt',$riqi);
        $map['account']=$_SESSION['taskAccount'];
        $data=M('taskestimate')->where($map)->order('date desc')->select();
        foreach ($data as $task){
            $arr[]=$task['task'];
        }   
        $arr=array_unique($arr);
        $this->assign('arr',$arr);
        
        $m=M('bug');
        $where['resolvedBy|closedBy']=$_SESSION['taskAccount'];
        $where['resolvedDate']= array('egt',$riqi);
        $data=$m->where($where)->order('resolvedDate desc')->select();
        $this->assign('data',$data);       
        
        $this->display();
    } 
    
    public function personLoad(){
        $where['assignedTo']=array('neq','closed');
        $where['status']=array('neq','closed');
        $where['status']=array('neq','cancel');
        $where['status']=array('neq','done');
        $where['deleted']='0';
        $m=M('task');
        $data=$m->field("assignedTo as name,count('id') as renwu")->group('assignedTo')->where($where)->select();
        $this->assign('data',$data);   
        $name=I('name');
        $where['assignedTo']=$name;
        $arr=$m->where($where)->field('id,project,name,deadline,estimate,consumed,left')->select();
        $this->assign('arr',$arr);
        $this->assign("name",$name);
        
        $this->display();
    }
     
}
   