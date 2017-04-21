<?php
namespace Tpyjd\Controller;
class OldcrmController extends WebInfoController {
    public function index(){
        $m=M('oldcrm');
        $arr=$m->field('otable')->group('otable')->select();
        $this->assign('arr',$arr);
        if ($_GET['otable']){//如果有URL参数，从参数取值
            $otable=$_GET['otable'];
        }elseif ($_SESSION['otable']){//没有参数，从$_SESSION中取值
            $otable=$_SESSION['otable'];
        }else {//如果都没有，给默认值state
            $otable="Account";
        }
        $_SESSION['otable']=$otable;
        $this->assign('otable',$otable);
        
        
        $data=$m->where(array('otable'=>$otable))->select();
        $this->assign('data',$data);
        
        $this->display();
    }
}