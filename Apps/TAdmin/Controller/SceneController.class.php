<?php
namespace TAdmin\Controller;

class SceneController extends CommonController {
    public function index(){
        $_SESSION['proid']=I('proid');
        $m= D("project");
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



    public function mod(){
        /* 实例化模型*/
        $m= D("tp_scene");
        $where['proid']=$_SESSION['proid'];
        $pros=$m->where($where)->order('sn,id')->select();
        $this->assign("data",$pros);
        
        $scene=$m->find(I('id'));
        $this->assign("scene",$scene);

        $this -> assign("state", formselect($scene['state']));
        $this -> assign("type", formselect($scene['type'],"type","sceneType"));

        $this->display();
    }

   

    

    public function copy(){
        $m=M('tp_scene');
        $data=$m->field("type,level,swho,swhen,testip,scene,state,flow")->find(I('sceneid'));
        $where=array("proid"=>I('proid'));
        $data['sourceid']=I('sceneid');
        $data['sn']=$m->where($where)->count()+1;
        $data['proid']=I('proid');
        $data['state']='待确认';
        $data['moder']=$_SESSION['realname'];
        if(!$m->create($data)){
            $this->error($m->getError());
        }
        $lastId=$m->add($data);

        $m=D('tp_scenefunc');
        $where=array("sceneid"=>I('sceneid'));
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

    
    

}