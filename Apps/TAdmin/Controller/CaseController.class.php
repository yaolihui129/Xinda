<?php
namespace TAdmin\Controller;
class CaseController extends CommonController {
    public function index(){


	     

	     
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
  


        $this->display();
    }

    
}