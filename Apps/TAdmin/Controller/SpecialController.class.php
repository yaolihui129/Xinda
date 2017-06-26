<?php
namespace TAdmin\Controller;
class SpecialController extends CommonController {
    public function index(){
        
        $m = D("tp_special");       
        $data=$m->select();
        $this->assign("data",$data);
        
        /* 阶段添加*/

        $this -> assign("state", formselect("未开始","state","prost"));
        $end=date("Y-m-d",time()+1*24*3600);
        $this->assign('end',$end);
        
        $this->display();
        
    }
    
}