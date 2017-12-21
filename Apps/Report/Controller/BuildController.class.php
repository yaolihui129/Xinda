<?php
namespace Report\Controller;
class BuildController extends WebInfoController {
    public function index(){ 
        $_SESSION['proid']= I('proid');
        $where['project']=I('proid');
        $where['deleted']='0';
        $data=M("build")->where($where)->order('date,id')->select();
        $this->assign('data',$data);  
        $branchs=array();
       
        if($data){
            foreach ($data as $d){
                $arr[]=$d['id'];
                if(!in_array($d['branch'],$branchs)){
                    $branchs[]=$d['branch'];
                }
            }
            $where['build']=array('in',$arr);
            $var=M("release")->where($where)->order('date,id')->select();
            $this->assign('branchs',$branchs);
            $this->assign('var',$var);
        }
        
              
        
        $this->display();
    }
    
    
    
    
}