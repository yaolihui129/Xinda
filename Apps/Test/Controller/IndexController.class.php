<?php
namespace Test\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $id=!empty($_GET['id'])?$_GET['id'] : 10;               
        /* 实例化模型*/
        $m=D('projectproduct');
        $where['zt_projectproduct.product']=$id;
        $where['zt_project.acl']='private';
        $where['zt_project.deleted']= '0';
        $data=$m->where($where)
        ->join('zt_project ON zt_projectproduct.project = zt_project.id')
        ->field("id,name,code,begin,end,testgp,status,pri,acl,deleted,desc,po,pm,qd,rd,order,deleted")
        ->order("end desc")
        ->limit(12)->select();            
        $this->assign('data',$data);
        
        $this->display();
    }
    
    
    public function _empty(){
    
        $this->display('index');
    }
        
}