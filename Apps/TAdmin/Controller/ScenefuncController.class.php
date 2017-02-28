<?php
namespace TAdmin\Controller;
class ScenefuncController extends CommonController {
    public function index(){
         /* 接收参数*/
        $sceneid=$_GET['sceneid'];
       /* 实例化模型*/
        $m = D('tp_scene');
        $where['proid']=$_SESSION['proid'];       
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign("data",$data);
        
        $arr=$m->find($sceneid);
        $this->assign("arr",$arr);

        $m=D('branch');
        $where=array("zt_tp_scenefunc.sceneid"=>$sceneid);
        $sfunc=$m
        ->join("inner JOIN zt_path ON zt_branch.id = zt_path.sysid")
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
        /* 接收参数*/
        $sceneid=$_GET['sceneid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=D('branch');
        $where=array("zt_tp_func.id"=>$funcid);
        $arr=$m->join("zt_path ON zt_branch.id = zt_path.sysid ")
        ->join('zt_tp_func ON zt_path.id =zt_tp_func.pathid')
        ->field("sysno,system,path,func")
        ->where($where)->find();
        $arr['path']=$arr['system']."-".$arr['path'];
        $arr['funcid']=$funcid;
        $arr['adder']=$_SESSION['realname'];
        $arr['sceneid']=$sceneid;
        $m=D('scenefunc');
        $where=array("sceneid"=>$sceneid);
        $arr['sn']=$m->where($where)->count()+1;
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }


    }

    public function addAllhc(){
        /* 接收参数*/
        $sceneid=$_GET['sceneid'];
        $m=D('tp_scenefunc');
        $where=array("sceneid"=>$sceneid);
        $arr=$m->where($where)->field("funcid,sn,sysno,path,func,remarks,casestate,casemain,caseexpected,
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
        /* 接收参数*/
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('tp_scenefunc');
        $arr=$m
        ->field("funcid,sysno,path,func,remarks,casestate,casemain,caseexpected,
            num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")
        ->find($id);
        $arr['moder']=$_SESSION['realname'];
        $m=D('tp_hcfunc');
        $where=array("moder"=>$_SESSION['realname']);
        $arr['sn']=$m->where($where)->count()+1;

        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }


    }

    public function insert(){
        /* 实例化模型*/
        $m=D('tp_scenefunc');

        $_POST['moder']=$_SESSION['realname'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }



    public function update(){
        /* 实例化模型*/
        $db=D('tp_scenefunc');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function order(){
        /* 实例化模型*/
        $db = D('tp_scenefunc');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }



    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_scenefunc');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }
}