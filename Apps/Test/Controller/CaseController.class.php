<?php
namespace Test\Controller;
use Think\Controller;
class CaseController extends WebInfoController {
   public function index(){
        /* 接收参数*/
         $funcid=$_GET['funcid'];
         /* 实例化模型*/
         $m=D('tp_func');
         $arr=$m->find($funcid);
         $this->assign('arr',$arr);
         $where['pathid']=$arr['pathid'];
         $data=$m->where($where)->order('sn,id')->select();
         $this->assign('data',$data);
         
    	 $m=D('tp_case');
    	 $map['funcid']=$funcid;
    	 $cases=$m->where($map)->order('sn,id')->select();
	     $this->assign('cases',$cases);        

        $this->display();
    }

    public function procase(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']= $proid;
        /* 实例化模型*/
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($proid);
        $this->assign('arr',$arr);
        
        $m=D('branch');
        $where=array("zt_tp_func.fproid"=>$proid,"zt_module.state"=>'正常',"zt_tp_func.state"=>'正常');
        $data=$m->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')        
        ->where($where)->order('zt_module.branch,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id')->select();
        $this->assign('data',$data);      
        
        $m=D('tp_case');
        $map['fproid']=$proid;
        $map['state']='正常';
        $var=$m->where($map)->field("adder,count(id)")->group('adder')->select();
//         dump($var);
        $this->assign('var',$var);

        $this->display();

    }
    
    public function _empty(){
    
        $this->display('index');
    }

 
}