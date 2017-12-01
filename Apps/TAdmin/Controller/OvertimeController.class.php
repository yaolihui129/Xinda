<?php
namespace TAdmin\Controller;
class OvertimeController  extends CommonController{
    public function index(){

        $m=M('tp_overtime');
        $where=array('userid'=>$_SESSION['id']);
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);
        
        $riqi=date("Y-m-d",time());
        $this->assign('riqi',$riqi);
        $begin=mktime(18, 00);//mktime(hour,minute,second,month,day,year)
        $begin=date('H:i',$begin);
        $this->assign('begin',$begin);
        $end=mktime(21, 00);//mktime(hour,minute,second,month,day,year)
        $end=date('H:i',$end);
        $this->assign('end',$end);

        $this->display();
    }
    
}