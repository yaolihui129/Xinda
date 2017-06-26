<?php
namespace Test\Controller;
class TaskController extends WebInfoController {
    public function index(){
        $users=M('user')->where(array("deleted"=>'0',"usergp"=>'PJD'))->field("account,realname")->order('account desc')->select();
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
     
}
   