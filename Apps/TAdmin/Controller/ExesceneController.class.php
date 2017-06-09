<?php
namespace TAdmin\Controller;
class ExesceneController extends CommonController{
    public function index(){             
    	$m=M('project');
    	$where=array("zt_tp_stage.state"=>"进行中","zt_tp_stagetester.tester"=>$_SESSION['realname'],"zt_tp_stagetester.type"=>I('type'));
    	$data=$m->join("zt_tp_stage ON zt_project.id = zt_tp_stage.proid")->order("zt_project.end desc")
    	 ->join("zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid")->where($where)->select();
	    $this->assign('data',$data);
	    $this->assign('type',I('type'));
	         
	    $m=D('tp_exescene');
	    $where=array("stagetesterid"=>I('stagetesterid',$data[0]['id']));
	    $exe=$m->where($where)->order("sn")->select();
	    $this->assign('exe',$exe);
	    $this->assign('stagetesterid',I('stagetesterid',$data[0]['id']));
	    if($exe) {
	        $this->display();
	    }else {
	        $this->error("没有任务");
	    }	    	    
    }


    public function test(){
        $m=M('project');
        $where=array("zt_tp_stage.state"=>"进行中","zt_tp_stagetester.tester"=>$_SESSION['realname'],"zt_tp_stagetester.type"=>I('type'));
        $data=$m->join("zt_tp_stage ON zt_project.id = zt_tp_stage.proid")
        ->join("zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid")
    	->order("zt_project.end desc")->where($where)->select();
        $this->assign('data',$data);       

        $m=D('tp_exescene');
        $where=array("stagetesterid"=>I('stagetesterid',$data[0]['id']));
        $exe=$m->where($where)->order("sn")->select();
        $this->assign('exe',$exe);
        $where=array("proid"=>I('proid',$data[0]['proid']),"stagetesterid"=>I('stagetesterid',$data[0]['id']),"type"=>I('type'));
        $this->assign('w',$where);

        $this->display();
   }

   public function pass(){
       $_GET['results']='通过';
       $_GET['testtime']=date("Y-m-d H:i:s",time());
       $_GET['runningip']= get_client_ip();
       if (D('tp_exescene')->save($_GET)){
           $this->success("修改成功！");
       }else{
           $this->error("修改失败！");
       }

   }

   public function fail(){
       $_GET['results']='失败';
       $_GET['testtime']=date("Y-m-d H:i:s",time());
       $_GET['runningip']= get_client_ip();
       if (D('tp_exescene')->save($_GET)){
           $this->success("修改成功！");
       }else{
           $this->error("修改失败！");
       }

   }

    public function queue(){
        $arr=D('tp_stagetester')->find(I('stagetesterid'));
        $this->assign('arr',$arr);
    
        $where=array("zt_tp_stage.proid"=>$_SESSION['proid'],"zt_tp_stagetester.type"=>$arr['type']);
        $data=D('tp_stage')->join(" zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid")
        ->where($where)->order("zt_tp_stage.sn,zt_tp_stage.id,zt_tp_stagetester.sn,zt_tp_stagetester.id")->select();
        $this->assign('data',$data);

        $where=array("stagetesterid"=>I('stagetesterid'));
        $exe=D('tp_exescene')->where($where)->order("sn,id")->select();
        $this->assign('exe',$exe);
    
        $this->display();
    
    }

    public function insert(){
        $data=D('tp_scene')->field("type,level,swho,swhen,testip,scene,flow")->find(I('sceneid'));    
        $m=D('tp_exescene');
        $where=array("stagetesterid"=>$_GET['stagetesterid'],"type"=>$_GET['type']);
        $data['sn']=$m->where($where)->count()+1;
        $data['adder']=$_SESSION['realname'];
        $data['moder']=$_SESSION['realname'];
        $data['createTime']=date("Y-m-d H:i:s",time());
        $data['stagetesterid']=$_GET['stagetesterid'];
        $data['sceneid']=I('sceneid');
    
        /*插入执行场景数据 */
        if(!$m->create($data)){
            $this->error($m->getError());
        }
        $lastId=$m->add($data);
         $m=D("tp_scenefunc");
         $where=array("sceneid"=>I('sceneid'));
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
        $arr=M('tp_stagetester')->find(I('stagetesterid'));
        $this->assign('arr',$arr);

        $where=array("stagetesterid"=>I('stagetesterid'));
        $exe=M('tp_exescene')->where($where)->order("sn")->select();
        $this->assign('exe',$exe);
    
        $where=array("proid"=>$_SESSION['proid'],"type"=>$arr['type']);
        $scene=M('tp_scene')->where($where)->order("sn")->select(); 
        $this->assign('scene',$scene);   
    
        $this->display();
    
    }


}