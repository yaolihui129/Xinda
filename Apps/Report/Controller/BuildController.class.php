<?php
namespace Report\Controller;
class BuildController extends WebInfoController {
    public function index(){              

        $where=array("project"=>I('proid'),"deleted"=>'0');
        $data=M("build")->where($where)->order('date,id')->select();
        $this->assign('data',$data);  
        
        $var=M("release")->where($where)->order('date,id')->select();
        $this->assign('var',$var);
              
        
        $this->display();
    }
    
    
    
    
}