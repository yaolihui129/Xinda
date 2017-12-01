<?php
namespace Report\Controller;
class FuncController extends WebInfoController {

    public function func(){
        $_SESSION['proid']= I('proid');
        $arr=M('project')->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($_SESSION['proid']);
        $this->assign('arr',$arr);

        $map['zt_tp_prosys.project']=$_SESSION['proid'];
        $map['zt_module.state']='正常';
        $map['zt_tp_func.state']='正常';
        $data=M("tp_prosys")->where($map)->join('zt_branch ON zt_tp_prosys.branch =zt_branch.id')
            ->join('zt_module ON zt_branch.id = zt_module.branch')
            ->join('zt_tp_func ON zt_module.id = zt_tp_func.pathid')
            ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")->select();
        $this->assign("data",$data);

        $this->display();

    }


    public function range(){
        $_SESSION['proid']= I('proid');
        $arr=M('project')->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($_SESSION['proid']);
        $this->assign('arr',$arr);

        $m = M("tp_stage");
        $where=array("proid"=>$_SESSION['proid']);
        $stage=$m->where($where)->order("sn,id")->select();
        $this->assign('stage',$stage);
        
        $where['zt_tp_stage.proid']=$_SESSION['proid'];
        $where['zt_tp_stage.state']='已完成';
        $where['zt_tp_exescene.results']='未测试';
        
        $stagetester=$m->where($where)
        ->join(' inner JOIN zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid')
        ->join(' inner JOIN zt_tp_exescene ON zt_tp_stagetester.id = zt_tp_exescene.stagetesterid')
        ->select();
        $this->assign('tester',$stagetester);
        
        $where=array('zt_tp_func.fproid'=>$_SESSION['proid'],'zt_tp_func.state'=>'正常','zt_module.state'=>'正常');
        $data=D('branch')->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->where($where)
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")
        ->select();
        
        $this->assign("data",$data);
        
        $this->display();

    }
    

}