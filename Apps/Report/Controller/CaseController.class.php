<?php
namespace Report\Controller;
class CaseController extends WebInfoController {
   public function index(){
       

        $this->display();
    }

    public function procase(){
        $_SESSION['proid']= I('proid');

        $where=array('zt_projectstory.project'=>$_SESSION['proid']);       
        $data=M('projectstory')->where($where)->join('zt_story ON zt_story.id =zt_projectstory.story')->select();
        $this->assign('data',$data);              

        $this->display();

    }
    
    function smoke(){
        $_SESSION['proid']= I('proid');
        $where=array('zt_projectstory.project'=>$_SESSION['proid']);
        $data=M('projectstory')->where($where)->join('zt_story ON zt_story.id =zt_projectstory.story')->select();
        $this->assign('data',$data);
        
        $this->display();
        
    }
  
 
}