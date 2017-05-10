<?php
namespace Test\Controller;
use Think\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $where=array('zt_projectproduct.product'=>C(PRODID),'zt_project.acl'=>'private','zt_project.deleted'=>'0');
        $data=M('projectproduct')->where($where)
            ->join('zt_project ON zt_projectproduct.project = zt_project.id')
            ->field("id,name,code,begin,end,testgp,status,pri,acl,deleted,desc,po,pm,qd,rd,order,deleted")
            ->order("end desc")->limit(12)->select();        
        $this->assign('data',$data);
//T('Test@Index/index')
        $this->theme('mobile')->display();
    }
    
}