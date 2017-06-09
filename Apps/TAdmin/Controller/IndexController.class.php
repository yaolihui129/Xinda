<?php
namespace TAdmin\Controller;
class IndexController  extends CommonController{    
   
    public function index(){
        $_SESSION['testgp']=I('testgp',$_SESSION['testgp']);
        $data=M('dict')->where(array("type"=>"testgp","state"=>"正常"))->field("id,k,v,state")->select();
        $this->assign('data',$data);
        $this->assign('search',I('search'));

        $map['testgp']=$_SESSION['testgp'];
        $map['name|code']=array('like','%'.I('search').'%');
        $map['acl']='private';
        $map['deleted']='0';        
        $arr=M('project')->where($map)->order("end desc")->field("id,name,code,status")->select();
        $this->assign('arr',$arr);       

	    $this->display();
    }
    
    public  function test(){
        $_SESSION['ip']= get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
             
        $this->theme($_SESSION['theme'])->display();
    }
}