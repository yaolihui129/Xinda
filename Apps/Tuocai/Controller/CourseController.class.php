<?php
namespace Tuocai\Controller;
use Think\Controller;
class CourseController extends Controller {
	
    public function mycourse(){
        
        if ($_SESSION['isteacher']==1){
            $where['tp_tc_techclass.teacherid']=$_SESSION['id'];
            //查询老师的课程表
            $m=D('tc_techclass');
            $arr=$m->where($where)
            ->join('tp_tc_plan ON tp_tc_plan.techclassid=tp_tc_techclass.id ')
            ->order('tp_tc_plan.skdate,tp_tc_plan.sktime')
            ->select();
            
            $this->assign('arr',$arr);
        }else {
            //查询学生的课程表
            $m=D('tc_studentcla');
            $where['tp_tc_studentcla.studentid']=$_SESSION['id'];
            $start=date("Y-m-d",time()-7*24*3600);
            $end=date("Y-m-d",time()+7*24*3600);
            $where['tp_tc_plan.skdate']  = array('between','$start,$end');
            $arr=$m->where($where)
            ->join('tp_tc_techclass ON tp_tc_techclass.id=tp_tc_studentcla.techclassid')
            ->join('tp_tc_plan ON tp_tc_plan.techclassid=tp_tc_techclass.id')
            ->order('tp_tc_plan.skdate,tp_tc_plan.sktime')
            ->select();
            
            $this->assign('arr',$arr);
        }
        
               
        $this->display();

    }
    
    
    public function _empty(){
    
        $this->display('index');
    }

  
  



}