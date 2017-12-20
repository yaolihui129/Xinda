<?php
namespace Test\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $where=array('zt_projectproduct.product'=>C(PRODID),'zt_project.testgp'=>'YX','zt_project.deleted'=>'0');
        $data=M('projectproduct')->where($where)
            ->join('zt_project ON zt_projectproduct.project = zt_project.id')
            ->field("id,name,code,begin,end,testgp,status,pri,acl,deleted,desc,po,pm,qd,rd,order,deleted")
            ->order("code desc")->limit(20)->select();        
        $this->assign('data',$data);

        $this->theme('')->display();
    }
    
    public function testingEnvironment(){
        $where=array('product'=>10,'state'=>'0');
        $m=M('branch');
        $var=$m->where($where)->select();
        $this->assign('var',$var);
        
        $this->theme('')->display();
    }
    
    
    
    public function  test(){
        $where=array('zt_projectproduct.product'=>C(PRODID),'zt_project.acl'=>'private','zt_project.deleted'=>'0');
        $pros=M('projectproduct')->where($where)
        ->join('zt_project ON zt_projectproduct.project = zt_project.id')
        ->field("id,name,code,begin,end,testgp,status,pri,acl,deleted,desc,po,pm,qd,rd,order,deleted")
        ->order("end desc")->select();
        $this->assign('pros',$pros);
        
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($_GET['proid']);
        $this->assign('arr',$arr);
        
        $m = D("tp_stage");
        $where=array("proid"=>$_GET['proid']);
        $stage=$m->where($where)->order("sn,id")->select();
        $this->assign('stages',$stage);
        dump($where);
        
        $this->display();
    }
    
}