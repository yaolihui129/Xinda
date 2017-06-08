<?php
namespace TAdmin\Controller;

class RiskController extends CommonController {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>"$gp","deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $m = D("tp_risk");
        $where=array("proid"=>"$proid");
        $risks=$m->where($where)->select();
        $this->assign("risks",$risks);
        
        $count=$m->where($where)->count()+1;      
        $this->assign('c',$count);
        $this -> assign("state", formselect("打开","state","rstate"));
        $this -> assign("level", formselect("C","level","risklevel"));
        $this->assign("tamethod",PublicController::editor("amethod","暂无方案"));
        $this->assign("tremaks",PublicController::editor("remaks",""));
        
	     $this->display();
    }


    public function mod(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m= D("tp_risk");
        $where=array("proid"=>$proid);
        $data=$m->where($where)->select();

        $this->assign("data",$data);
        $this->assign('w',$where);

        $risk=$m->find($id);
        $this->assign("risk",$risk);
        $this -> assign("level", formselect($risk['level'],"level","risklevel"));
        $this -> assign("state", formselect($risk['state'],"state","rstate"));
        $this->assign("tamethod",PublicController::editor("amethod",$risk['amethod']));
        $this->assign("tremaks",PublicController::editor("remaks",$risk['remaks']));

        $this->display();
    }

  




    
}