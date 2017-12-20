<?php
namespace Report\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $where=array('testgp'=>'YX','deleted'=>'0');
        $data=M('project')->where($where)            
            ->field("id,name,code,begin,end,status,pri,acl,deleted,desc,PO,PM,QD,RD,order,deleted")
            ->order("end desc")->limit(20)->select();        
        $this->assign('data',$data);

        $this->theme('')->display();
    }
    
}