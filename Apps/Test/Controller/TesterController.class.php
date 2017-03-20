<?php
namespace Test\Controller;
use Think\Controller;
class TesterController extends Controller {
    public function index(){
        
        $start=date("Y-m-d",time()-7*24*3600);
        
        $m=D('tp_stage');
        $where['state']='进行中';
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);

        $m=D('tp_stagetester');
        $data=$m->order('stageid desc,type')->select();
        $this->assign('data',$data);
        
       
        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
}