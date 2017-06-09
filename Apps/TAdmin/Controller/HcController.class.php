<?php
namespace TAdmin\Controller;
class HcController extends CommonController {

    public function addhc(){
        $where=array("zt_tp_func.id"=>I('funcid'));
        $arr=D('system')->join("zt_path ON zt_system.id = zt_path.sysid ")
        ->join('zt_tp_func ON zt_path.id =zt_tp_func.pathid')
        ->field("sysno,system,path,func")->where($where)->find();
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
        $data['sceneid']=$_GET['sceneid'];
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

    /*
     * 缓存全部加入场景功能
     */
    public function addAllsf(){
        $where=array("adder"=>$_SESSION['realname']);
        $arr=M('tp_hcfunc')->where($where)->field("sn,path,funcid,func,remarks,adder")->select();

        $m=D('tp_hcfunc');
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
        $m=M('tp_hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $id=$m->where($where)->field("id")->select();

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

    public function del(){
        if (M('tp_hcfunc')->delete(I('id'))>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
   

}