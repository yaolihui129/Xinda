<?php
namespace TAdmin\Controller;
class CaseController extends CommonController {
    public function index(){
         $m=D('tp_func');
         $arr=$m->find(I('funcid'));
         $this->assign('arr',$arr);
         
         $where['pathid']=$arr['pathid'];
         $data=$m->where($where)->order('sn,id')->select();
         $this->assign('data',$data);
         
    	 $m=D('tp_case');
    	 $where['funcid']=I('funcid');
    	 $cases=$m->where($where)->order('sn,id')->select();
	     $this->assign('cases',$cases);
	    
	     
	     /* 添加*/
	     if($_SESSION['casetype']=="M"){
	         $source='测试执行阶段';
	     }elseif ($_SESSION['casetype']=="C"){
	         $source='用例编写阶段';
	     }else{
	         $source='其他阶段';
	     }
	     $this->assign('source',$source);
	     $count=$m->where($where)->count()+1;
	     $this->assign("c",$count);
	     $this -> assign("state", formselect());	     
	     $this->assign("caozuo",PublicController::editor("steps"));
	     
	     $this->display();
    }



    public function mod(){

        $m=M('tp_case');
        $case=$m->find(I('id'));
        $this->assign("case",$case);
        $this -> assign("p", I('p'));
        
        $where['funcid']=$case['funcid'];
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data);                  
        //获取模块
        $where=array("module"=>$this->getModuleid($case['funcid']), 'deleted'=>'0');
        $rules=D('story')->where($where)->field('id,branch,module,title,status,stage,openedBy,lastEditedDate,version')->select();
        $this->assign('rules',$rules);
        
        
        $this -> assign("state", formselect($case['state']));
        $this -> assign("fproid", proselect($case['fproid'],"fproid"));
        $this -> assign("caozuo",PublicController::editor("steps",$case['steps']));

        $this->display();
    }
    
    function getModuleid($funcid){
        $m=D('tp_func');
        $date=$m->find($funcid);
        return $date['pathid'];
    }

    public function library(){
        $_SESSION['proid']=I('proid');
        $m= D("project");
        $where=array("testgp"=>I('testgp',$_SESSION['testgp']),"deleted"=>'0');
        $pros=$m->where($where)->order("code desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        $where=array("zt_tp_case.fproid"=>$_SESSION['proid']);
        $cases=M('branch')->where($where)->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id,zt_tp_case.sn,zt_tp_case.id")
            ->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
            ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
            ->join(' inner JOIN zt_tp_case ON zt_tp_func.id = zt_tp_case.funcid')->select();
        $this->assign('cases',$cases);


        $this->display();
    }

    
}