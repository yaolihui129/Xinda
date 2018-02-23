<?php
namespace Record\Controller;
class IndexController  extends CommonController{    
   
    public function index(){
        $search=I('search');
        $this->assign('search',$search);
        $map['testgp']='YX';
        
        $map['name|code']=array('like','%'.$search.'%');
        $map['deleted']='0';        
        $arr=M('project')->where($map)->order("end desc")->select();
        $this->assign('arr',$arr);       

	    $this->display();
    }
    

}