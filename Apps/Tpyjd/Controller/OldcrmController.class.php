<?php
namespace Tpyjd\Controller;
class OldcrmController extends WebInfoController {
    public function index(){
        $m=M('oldcrm');
        $arr=$m->field('otable')->group('otable')->select();
        $this->assign('arr',$arr);
        if ($_GET['otable']){//如果有URL参数，从参数取值
             $_SESSION['otable']=$_GET['otable'];
        }else {//如果都没有，给默认值
            if($_SESSION['otable']){
                $_SESSION['otable']="Account";
            }            
        }
        $this->assign('otable', $_SESSION['otable']);
               
        $data=$m->where(array('otable'=> $_SESSION['otable']))->select();
        $this->assign('data',$data);
        
        $this->display();
    }
}