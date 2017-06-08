<?php
namespace TAdmin\Controller;

class StageController extends CommonController {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
         /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $m = D("tp_stage");
        $where=array("proid"=>"$proid");
        $stages=$m->where($where)->order("sn,id")->select();
        $this->assign("stages",$stages);
              
        /* 阶段添加*/        
        $count=$m->where($where)->count()+1;
        $this->assign('c',$count);       
        $this -> assign("state", formselect("未开始","state","prost"));
        $end=date("Y-m-d",time()+1*24*3600);
        $this->assign('end',$end);
        
	    $this->display();
    }


    public function mod(){
        /* 接收参数*/
        $id = $_GET['id'];
        /* 实例化模型*/ 
        $m= D("tp_stage");
        $where['proid']=$_SESSION['proid'];
        $pros=$m->where($where)->order("sn,id")->select();
        $this->assign("data",$pros);
        
        $stage=$m->find($id);
        $this->assign("stage",$stage);
        
        $this -> assign("state", formselect($stage['state'],"state","prost"));
        $this -> assign("document", formselect($stage['document'],"document","document"));


        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('tp_stage');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！",U("Stage/index?proid={$_POST['proid']}"));
        }else{
            $this->error("修改失败！");
        }
    }

    public function modstate(){
        /* 实例化模型*/
        $db=D('tp_stage');
        if ($_GET['state']=="未开始"){
            $_GET['state']="进行中";
        }elseif ($_GET['state']=="进行中"){
            $_GET['state']="已完成";
        }

        if ($db->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    } 
   
}