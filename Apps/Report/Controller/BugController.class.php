<?php
namespace Report\Controller;
class BugController extends WebInfoController {
    public function index(){        
        $arr=M('project')->find(I('proid'));
        $this->assign('arr',$arr);        

        $where=array("project"=>I('proid'),"deleted"=>'0');
        $m=M("bug");
        $data=$m->where($where)->order('status,id')->select();
        $this->assign('data',$data);    
              
        $var=$m->where($where)->field("openedBy,count(id)")->group('openedBy')->order('count(id) desc')->select();       
        $this->assign('var',$var);
//         dump($var);
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
    
}