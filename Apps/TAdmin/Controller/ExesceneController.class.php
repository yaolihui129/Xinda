<?php
namespace TAdmin\Controller;
class ExesceneController extends CommonController{
    public function index(){
        //接收参数       
        $type=$_GET['type'];
        $this->assign('type',$type);
        //初始化模型               
    	$m=M('project');
    	$where=array("zt_tp_stage.state"=>"进行中","zt_tp_stagetester.tester"=>$_SESSION['realname'],"zt_tp_stagetester.type"=>$type);
    	$data=$m->join("zt_tp_stage ON zt_project.id = zt_tp_stage.proid")
    	 ->join("zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid")
    	 ->order("zt_project.end desc")->where($where)->select();
	    $this->assign('data',$data);
	    
	    $stagetesterid=!empty($_GET['stagetesterid'])?$_GET['stagetesterid']:$data[0]['id'];	     
	    $m=D('tp_exescene');
	    $where=array("stagetesterid"=>$stagetesterid);
	    $exe=$m->where($where)->order("sn")->select();
	    $this->assign('exe',$exe);
	    $this->assign('stagetesterid',$stagetesterid);
	    if($exe) {
	        $this->display();
	    }else {
	        $this->error("没有任务");
	    }
	    
	    
    }

    public function order(){

        $db = D('tp_exescene');
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

    public function test(){

        $type=$_GET['type'];

        $m=M('project');
        $where=array("zt_tp_stage.state"=>"进行中","zt_tp_stagetester.tester"=>$_SESSION['realname'],"zt_tp_stagetester.type"=>$type);
        $data=$m->join("zt_tp_stage ON zt_project.id = zt_tp_stage.proid")
        ->join("zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid")
    	->order("zt_project.end desc")
        ->where($where)
        ->select();
        $this->assign('data',$data);       

        $stagetesterid=!empty($_GET['stagetesterid'])?$_GET['stagetesterid']:$data[0]['id'];
        $m=D('tp_exescene');
        $where=array("stagetesterid"=>$stagetesterid);
        $exe=$m->where($where)->order("sn")->select();
        $this->assign('exe',$exe);
        $proid=!empty($_GET['proid'])?$_GET['proid']:$data[0]['proid'];
        $where=array("proid"=>$proid,"stagetesterid"=>$stagetesterid,"type"=>$type);
        $this->assign('w',$where);

        $this->display();
   }

   public function pass(){
       $id=$_GET['id'];
       $_GET['results']='通过';
       $_GET['testtime']=date("Y-m-d H:i:s",time());
       $_GET['runningip']= get_client_ip();
       $db=D('tp_exescene');
       if ($db->save($_GET)){
           $this->success("修改成功！");
       }else{
           $this->error("修改失败！");
       }

   }

   public function fail(){
       $id=$_GET['id'];
       $_GET['results']='失败';
       $_GET['testtime']=date("Y-m-d H:i:s",time());
       $_GET['runningip']= get_client_ip();
       $db=D('tp_exescene');
       if ($db->save($_GET)){
           $this->success("修改成功！");
       }else{
           $this->error("修改失败！");
       }

   }

public function queue(){
    /* 接收参数*/
    $stagetesterid=$_GET['stagetesterid'];
    /* 实例化模型*/
    $m=D('tp_stagetester');
    $arr=$m->find($stagetesterid);
    $this->assign('arr',$arr);

    $m=D('tp_stage');
    $where=array("zt_tp_stage.proid"=>$_SESSION['proid'],"zt_tp_stagetester.type"=>$arr['type']);
    $data=$m->join(" zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid")
    ->where($where)->order("zt_tp_stage.sn,zt_tp_stage.id,zt_tp_stagetester.sn,zt_tp_stagetester.id")->select();
    $this->assign('data',$data);
    
    $m=D('tp_exescene');
    $where=array("stagetesterid"=>$stagetesterid);
    $exe=$m->where($where)->order("sn,id")->select();
    $this->assign('exe',$exe);

    $this->display();

}

public function insert(){
    $sceneid=$_GET['sceneid'];
    $m=D('tp_scene');
    $data=$m->field("type,level,swho,swhen,testip,scene,flow")->find($sceneid);

    $m=D('tp_exescene');
    $where=array("stagetesterid"=>$_GET['stagetesterid'],"type"=>$_GET['type']);
    $data['sn']=$m->where($where)->count()+1;
    $data['adder']=$_SESSION['realname'];
    $data['moder']=$_SESSION['realname'];
    $data['createTime']=date("Y-m-d H:i:s",time());
    $data['stagetesterid']=$_GET['stagetesterid'];
    $data['sceneid']=$sceneid;

    /*插入执行场景数据 */
    if(!$m->create($data)){
        $this->error($m->getError());
    }
    $lastId=$m->add($data);
     $m=D("tp_scenefunc");
     $where=array("sceneid"=>$sceneid);
     $arr=$m->field("sn,funcid,func,path,remarks as funcremarks,casestate,casemain,caseexpected,
            num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")
     ->where($where)->select();
     /*插入执行场景功能数据 */
     foreach ($arr as $a){

         $a['exesceneid']=$lastId;
         $a['adder']=$_SESSION['realname'];
         $a['moder']=$_SESSION['realname'];
         $a['updateTime']=date("Y-m-d H:i:s",time());
         $m=D('tp_exefunc');
         if(!$m->create($a)){
             $this->error($m->getError());
         }
         $lastfId=$m->add($a);
     }
    if($lastfId){
        $this->success("添加成功");
    }else{
        $this->error("添加失败");
    }

}


public function library(){
    /* 接收参数*/
    $stagetesterid=$_GET['stagetesterid'];
    /* 实例化模型*/
    $m=D('tp_stagetester');
    $arr=$m->find($stagetesterid);
    $this->assign('arr',$arr);

    $m=D('tp_exescene');
    $where=array("stagetesterid"=>$stagetesterid);
    $exe=$m->where($where)->order("sn")->select();
    $this->assign('exe',$exe);

    $m=D('tp_scene');
    $where=array("proid"=>$_SESSION['proid'],"type"=>$arr['type']);
    $scene=$m->where($where)->order("sn")->select(); 
    $this->assign('scene',$scene);   

    $this->display();

}



}