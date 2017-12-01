<?php
namespace Report\Controller;
class CaseController extends WebInfoController {
   public function index(){
         $m=M('tp_func');
         $arr=$m->find(I('funcid'));
         $this->assign('arr',$arr);
         $where['pathid']=$arr['pathid'];
         $data=$m->where($where)->order('sn,id')->select();
         $this->assign('data',$data);

    	 $map['funcid']=I('funcid');
    	 $cases=M('tp_case')->where($map)->order('sn,id')->select();
	     $this->assign('cases',$cases);        

        $this->display();
    }

    public function procase(){
        $_SESSION['proid']= I('proid');
        $arr=M('project')->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($_SESSION['proid']);
        $this->assign('arr',$arr);
        
        $where=array("zt_tp_func.fproid"=>$_SESSION['proid'],"zt_module.state"=>'正常',"zt_tp_func.state"=>'正常');
        $data=M('branch')->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')        
        ->where($where)->order('zt_module.branch,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id')->select();
        $this->assign('data',$data);      
        
        $map['fproid']=$_SESSION['proid'];
        $map['state']='正常';
        $var=M('case')->where($map)->field("adder,count(id)")->group('adder')->select();

        $this->assign('var',$var);

        $this->display();

    }
    
  
 
}