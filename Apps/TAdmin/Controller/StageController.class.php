<?php
namespace TAdmin\Controller;
class StageController extends CommonController {
    public function index(){
        
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $_SESSION['proid']=I('proid',$pros[0]['id']);
//         dump($pros[0]['id']);
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        $m = D("tp_stage");
        $where=array("proid"=>$_SESSION['proid']);
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
        $m= D("tp_stage");
        $where['proid']=$_SESSION['proid'];
        $pros=$m->where($where)->order("sn,id")->select();
        $this->assign("data",$pros);
        
        $stage=$m->find(I('id'));
        $this->assign("stage",$stage);       
        $this -> assign("state", formselect($stage['state'],"state","prost"));

        $this->display();
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_stage')->save($_POST)){
            $this->success("修改成功！",U("Stage/index?proid={$_POST['proid']}"));
        }else{
            $this->error("修改失败！");
        }
    }

    public function modstate(){
        if ($_GET['state']=="未开始"){
            $_GET['state']="进行中";
        }elseif ($_GET['state']=="进行中"){
            $_GET['state']="已完成";
        }
        if (D('tp_stage')->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    } 
   
}