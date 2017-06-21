<?php
namespace Test\Controller;
class BugController extends WebInfoController {
    public function index(){        
        $arr=M('project')->find(I('proid'));
        $this->assign('arr',$arr);        

        $where=array("project"=>I('proid'),"deleted"=>'0');
        $data=M("bug")->where($where)->order('status,id')->select();
        $this->assign('data',$data);                
        
        $this->display();
    }
    
}