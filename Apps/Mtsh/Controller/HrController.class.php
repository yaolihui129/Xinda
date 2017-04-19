<?php
namespace Mtsh\Controller;
class HrController extends WebInfoController {

    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
        
        $m=D('tp_hr');
        $data=$m->select();
        $this->assign('data',$data);
        
        $this->display();
        
    }
    
    public function signup(){
        
        $m=D('tp_hr');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
        $this->display();
    }
    
    
    public function create(){
        $map['phone']=array('like','%'.$_POST['phone'].'%');
        $m=M('tp_admin');
        $arr=$m->where($map)->find();
        if($arr){
           $this->success("有"); 
        }else{
            $this->success("无");
        }        
    }
    
    public function add(){
        
        $this->display();
    }
    
    public function insert(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        $m=D('tp_hr');
        $_POST['prodid']=$_SESSION[$JC]['id'];
        $_POST['moder']=$_SESSION['realname'];       
        
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }
    
    
    
    
}