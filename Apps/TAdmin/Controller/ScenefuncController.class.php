<?php
namespace TAdmin\Controller;
class ScenefuncController extends CommonController {
    public function index(){
        $m = D('tp_scene');
        $where['proid']=$_SESSION['proid'];       
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign("data",$data);
        
        $arr=$m->find(I('sceneid'));
        $this->assign("arr",$arr);

        $where=array("zt_tp_scenefunc.sceneid"=>I('sceneid'));
        $sfunc=M('branch')->join("inner JOIN zt_path ON zt_branch.id = zt_path.sysid")
        ->join("inner JOIN zt_tp_func ON zt_path.id = zt_tp_func.pathid")
        ->join("inner JOIN zt_tp_scenefunc ON zt_tp_func.id = zt_tp_scenefunc.funcid")
        ->where($where)->order('zt_tp_scenefunc.sn')->select();
        $this->assign("sfunc",$sfunc);
       
	     $this->display();
    }


/*
 * 功能库加入场景
 */
    public function addscene(){
        $where=array("zt_tp_func.id"=>I('funcid'));
        $arr=M('branch')->join("zt_path ON zt_branch.id = zt_path.sysid ")
        ->join('zt_tp_func ON zt_path.id =zt_tp_func.pathid')
        ->field("sysno,system,path,func")->where($where)->find();
        $arr['path']=$arr['system']."-".$arr['path'];
        $arr['funcid']=I('funcid');
        $arr['adder']=$_SESSION['realname'];
        $arr['sceneid']=I('sceneid');
        
        $m=D('scenefunc');
        $where=array("sceneid"=>I('sceneid'));
        $arr['sn']=$m->where($where)->count()+1;
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        if($m->add($arr)){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }

    public function addAllhc(){
        $where=array("sceneid"=>I('sceneid'));
        $arr=M('tp_scenefunc')->where($where)->field("funcid,sn,sysno,path,func,remarks,casestate,casemain,caseexpected,
            num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")->select();
        $m=D('tp_hcfunc');
        foreach ($arr as $a){
            if(!$m->create($a)){
                  $this->error($m->getError());
            }
           $lastId=$m->add($a);
        }
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }


    public function addhc(){
        $arr=M('tp_scenefunc')->find(I('id'));
        $arr['moder']=$_SESSION['realname'];
        $m=D('tp_hcfunc');
        $where=array("moder"=>$_SESSION['realname']);
        $arr['sn']=$m->where($where)->count()+1;
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        if($m->add($arr)){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }

}