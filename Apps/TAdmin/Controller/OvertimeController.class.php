<?php
namespace TAdmin\Controller;
class OvertimeController  extends CommonController{
    public function index(){
//         dump($_SESSION);
        $m=M('tp_overtime');
        $where=array('userid'=>$_SESSION['id']);
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);
        $this->display();
    }
    
}