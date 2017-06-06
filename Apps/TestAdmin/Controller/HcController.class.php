<?php
namespace TestAdmin\Controller;
class HcController extends CommonController {

    public function addhc(){
        $where=array("zt_tp_func.id"=>I('funcid'));
        $arr=D('system')->join("zt_path ON zt_system.id = zt_path.sysid ")
        ->join('zt_tp_func ON zt_path.id =zt_tp_func.pathid')
        ->field("sysno,system,path,func")
        ->where($where)
        ->find();
        $arr['path']=$arr['system']."-".$arr["path"];
        $arr['funcid']=I('funcid');
        $m=D('tp_hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $arr['sn']=$m->where($where)->count()+1;
        $arr['adder']=$_SESSION['realname'];
        
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        if($m->add($arr)){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }


    }

    public function addfunc(){

        $m=D('tp_hcfunc');
        $data=$m->field("sn,funcid,path,func,remarks,adder")->find(I('id'));
        $data['sceneid']=I('sceneid');
        $data['moder']=$_SESSION['realname'];
        $data['createTime']=date("Y-m-d H:i:s",time());

        $m=D('tp_scenefunc');
        if(!$m->create($data)){
            $this->error($m->getError());
        }
        $lastId=$m->add($data);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }

    public function addAllsf(){
        $where=array("adder"=>$_SESSION['realname']);
        $arr=M('tp_hcfunc')->where($where)->field("sn,path,funcid,func,remarks,adder")->select();
        foreach ($arr as $a){
            $a['sceneid']=I('sceneid');
            $a['moder']=$_SESSION['realname'];
            $a['createTime']=date("Y-m-d H:i:s",time());

            $m=D('scenefunc');
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

    public function delAll(){
        /* 实例化模型*/
        $m=M('tp_hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $id=$m->where($where)->field("id")->select();
        if ($m->delete($id)>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }


    }

    public function order(){

        $db = D('tp_hcfunc');
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
        $count =M('tp_hcfunc')->delete(I('id'));
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}