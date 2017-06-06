<?php
namespace TestAdmin\Controller;

class SceneController extends CommonController {
    public function index(){
        $_SESSION['proid']=I('proid');
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        if (!empty($_GET['copy'])) {
            $_SESSION['copy']=$_GET['copy'];
        }

        /* 实例化模型*/
        $m = D("tp_scene");
        $where=array("proid"=>$_SESSION['proid']);
        $scene=$m->where($where)->order('sn')->select();
        $this->assign("scene",$scene);
        $where=array("proid"=>$_SESSION['proid'],"copy"=>$_SESSION['copy']);
        
        $count=$m->where($where)->count()+1;
        $this->assign('c',$count);
        $this -> assign("state", formselect());
        $this -> assign("type", formselect("Manual","type","sceneType"));
        
	    $this->display();
    }


    public function insert(){
        $m=D('tp_scene');
        $_POST['moder']=$_SESSION['realname'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }

    public function mod(){
        $m= M("tp_scene");
        $where['proid']=$_SESSION['proid'];
        $pros=$m->where($where)->order('sn,id')->select();
        $this->assign("data",$pros);
        
        $scene=$m->find(I('id'));
        $this->assign("scene",$scene);

        $this -> assign("state", formselect($scene['state']));
        $this -> assign("type", formselect($scene['type'],"type","sceneType"));

        $this->display();
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_scene')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function order(){
        $db = D('tp_scene');
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


    public function copy(){
        /* 接收参数*/
        $sceneid=I('sceneid');
        $proid=I('proid');
        /* 实例化模型*/
        $m=M('tp_scene');
        $data=$m->field("type,level,swho,swhen,testip,scene,state,flow")->find($sceneid);
        $where=array("proid"=>$proid);
        $data['sourceid']=$sceneid;
        $data['sn']=$m->where($where)->count()+1;
        $data['proid']=$proid;
        $data['state']='待确认';
        $data['moder']=$_SESSION['realname'];
        if(!$m->create($data)){
            $this->error($m->getError());
        }
        $m->add($data);

        $m=D('tp_scenefunc');
        $where=array("sceneid"=>$sceneid);
        $arr=$m->where($where)
             ->field("sn,funcid,sysno,path,func,remarks,caseid,casestate,casemain,caseexpected,num1,num2,num3,
                 num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")
             ->order('sn')->select();
        foreach ($arr as $a){
            $a['sceneid']=$lastId;
            $a['moder']=$_SESSION['realname'];
            if(!$m->create($a)){
                $this->error($m->getError());
            }
            $lastfId=$m->add($a);
        }

        if($lastfId){
            $this->success("复制成功");
        }else{
            $this->error("复制失败");
        }

    }

    public function del(){
        $count =M('tp_scene')->delete(I('id'));
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }
    

}