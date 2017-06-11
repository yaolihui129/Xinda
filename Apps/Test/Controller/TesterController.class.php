<?php
namespace Test\Controller;
class TesterController extends WebInfoController {
    public function index(){
        
        $start=date("Y-m-d",time()-7*24*3600);       
        $where['state']='进行中';
        $arr=D('tp_stage')->where($where)->select();
        $this->assign('arr',$arr);

        $data=D('tp_stagetester')->order('stageid desc,type')->select();
        $this->assign('data',$data);
             
        $this->display();
    }
    
}