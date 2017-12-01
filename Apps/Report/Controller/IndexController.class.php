<?php
namespace Report\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $where=array('testgp'=>'YX','acl'=>'private','deleted'=>'0');
        $data=M('project')->where($where)            
            ->field("id,name,code,begin,end,status,pri,acl,deleted,desc,po,pm,qd,rd,order,deleted")
            ->order("code desc")->limit(20)->select();        
        $this->assign('data',$data);

        $this->theme('')->display();
    }
    
    public function testingEnvironment(){
        
        $m=M('branch');
        $where=array('product'=>1,'state'=>'0');
        $var=$m->where($where)->select();
        $this->assign('var',$var);
        $where=array('product'=>4,'state'=>'0');
        $var=$m->where($where)->select();
        $this->assign('var1',$var);
        $where=array('product'=>5,'state'=>'0');
        $var=$m->where($where)->select();
        $this->assign('var2',$var);
        
        $this->theme('')->display();
    }
    
    
    
    public function  test(){
        $where=array('testgp'=>'YX','zt_project.acl'=>'private','zt_project.deleted'=>'0');
        $pros=M('projectproduct')->where($where)
        ->join('zt_project ON zt_projectproduct.project = zt_project.id')
        ->field("id,name,code,begin,end,status,pri,acl,deleted,desc,po,pm,qd,rd,order,deleted")
        ->order("end desc")->select();
        $this->assign('pros',$pros);
        
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,status,pri,deleted,desc,po,pm,qd,rd,order")->find($_GET['proid']);
        $this->assign('arr',$arr);
        
        $m = D("tp_stage");
        $where=array("proid"=>$_GET['proid']);
        $stage=$m->where($where)->order("sn,id")->select();
        $this->assign('stages',$stage);

        
        $this->display();
    }
    
}