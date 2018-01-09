<?php
namespace Record\Controller;

class PunishController extends CommonController {
    public function index(){

        $where=array("proid"=>$_SESSION['proid']);
        $data=M("tp_punish")->where($where)->select();
        $this->assign("data",$data);

	    $this->display();
    }


    public function mod(){
        $m= D("tp_punish");
        $where=array("proid"=> $_SESSION['proid']);
        $data=$m->where($where)->select();

        $this->assign("data",$data);

        $risk=$m->find(I('id'));
        $this->assign("risk",$risk);
        $this -> assign("level", formselect($risk['level'],"level","risklevel"));
        $this -> assign("state", formselect($risk['state'],"state","rstate"));
        $this->assign("tamethod",PublicController::editor("amethod",$risk['amethod']));
        $this->assign("tremaks",PublicController::editor("remaks",$risk['remaks']));

        $this->display();
    }
   
}