<?php
namespace TestAdmin\Controller;

class StageController extends CommonController {   
    public function add(){
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $m = M("tp_stage");
        $where=array("proid"=>$_SESSION['proid']);
        $stages=$m->where($where)->order("sn,id")->select();
        $this->assign("stages",$stages);
        
        $count=$m->where($where)->count()+1;
        $this->assign('c',$count);
        $this -> assign("state", formselect("未开始","state","prost"));
        $end=date("Y-m-d",time()+1*24*3600);
        $this->assign('end',$end);
        
        $this->display();
    }

    public function mod(){
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $m = M("tp_stage");
        $where=array("proid"=>$_SESSION['proid']);
        $stages=$m->where($where)->order("sn,id")->select();
        $this->assign("stages",$stages);
        
        $data=$m->find(I('id'));
        $this->assign("data",$data);
        
        $this -> assign("state", formselect($data['state'],"state","prost"));       
        $this->display();
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