<?php
namespace TestAdmin\Controller;
use Think\Controller;
class IndexController  extends CommonController{  
    public function index(){
        /* 项目分组*/
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');        
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        $_SESSION['proid']=I('proid',$pros[0]['id']);

        /* 里程碑信息*/
        $where=array("proid"=>$_SESSION['proid']);
        $stages=M("tp_stage")->where($where)->order("sn,id")->select();
        $this->assign("stages",$stages);
        /* 项目风险*/
        $where=array("proid"=> $_SESSION['proid']);
        $risks=M("tp_risk")->where($where)->select();
        $this->assign("risks",$risks);
        
        /* 项目平台*/
        $m = D('branch');
        $where=array("project"=>$_SESSION['proid']);
        $prosys=$m->join('zt_tp_prosys ON zt_tp_prosys.branch =zt_branch.id')
        ->where($where)->order('zt_branch.sysno')->select();
        $this->assign("prosys",$prosys);
       
        /* 备选平台*/
        $map['product']=getProProdunct($_SESSION['proid']);
        $map['state']=0;
        $syses=$m->where($map)->order('sn')->select();
        $this->assign('syses',$syses); 
        
        /* 功能点*/
        $where=array('zt_tp_prosys.project'=>$_SESSION['proid'],'zt_module.state'=>'正常','zt_tp_func.state'=>'正常');
        $funcs= D("tp_prosys")->where($where)->join('zt_branch ON zt_tp_prosys.branch =zt_branch.id')
        ->join('zt_module ON zt_branch.id = zt_module.branch')
        ->join('zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")->select();
        $this->assign("funcs",$funcs);
        
        /* 测试范围*/
        $where=array('zt_tp_func.fproid'=>$_SESSION['proid'],'zt_tp_func.state'=>'正常','zt_module.state'=>'正常');
        $range= M('branch')->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
            ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')->where($where)
            ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")->select();
        $this->assign("ranges",$range);
        
        
        /* 测试场景*/
//         if (!empty(I('copy'))) {
//             $_SESSION['copy']=I('copy');
//         }             
        $where=array("proid"=>$_SESSION['proid']);
        $scene=M("tp_scene")->where($where)->order('sn')->select();
        $this->assign("scene",$scene);
        /* 项目用例*/
        $where=array("zt_tp_case.fproid"=>$_SESSION['proid']);
        $cases=M('branch')->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->join(' inner JOIN zt_tp_case ON zt_tp_func.id = zt_tp_case.funcid')
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id,zt_tp_case.sn,zt_tp_case.id")
        ->where($where)->select();
        $this->assign('cases',$cases);
        
        
        /* 项目需求*/
        $where=array("zt_projectstory.project"=>$_SESSION['proid'], 'zt_story.deleted'=>'0');
        $rules=M('module')->where($where)->join('zt_story ON zt_story.module =zt_module.id')
                ->join('zt_projectstory ON zt_projectstory.story =zt_story.id')
                ->order('zt_story.branch,zt_module.order,zt_module.id')
                ->field('zt_story.id as id,
                         zt_story.branch as branch,
                         zt_story.module as moduleid,
                         zt_story.title as title,
                         zt_story.status as status,
                         zt_story.stage as stage,
                         zt_story.openedBy as openedBy,
                         zt_story.lastEditedDate as lastEditedDate,
                         zt_story.version as version')->select();
        $this->assign("rules",$rules);
     
        $this->display();
    }
    
    
    
}