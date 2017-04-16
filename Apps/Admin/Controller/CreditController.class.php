<?php
namespace Admin\Controller;
class CreditController extends CommonController {

    public function index(){
        if ($_POST['search']){
            /* 接收参数*/
            $search=$_POST['search'];
            $map['realname|phone|pincodes']=$search;
            /* 实例化模型*/
            $m=M('tp_customer');
            $arr=$m->where($map)->order("utime desc")->select();
            $this->assign('data',$arr);
            $search=array("search"=>$search);
            $this->assign('w',$search);
        }
        if($_GET['search']){
            $search=$_GET['search'];
            $map['realname|phone|pincodes']=$search;
            /* 实例化模型*/
            $m=M('tp_customer');
            $arr=$m->where($map)->order("utime desc")->select();
            $this->assign('data',$arr);
            
            $search=array("search"=>$search);
            $this->assign('w',$search);
        }
        
        
        $this->display();
    }
    
    public function add(){
        
        $this->display();
    }
    
    public function insert(){
    
        /* 实例化模型*/
        $m=D('tp_customer');
    
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['ctime']=time();
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    
    }
    
    public function mod(){    
        /* 实例化模型*/
        $m=D('tp_customer');   
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);             
       
        $this->display();
    }
    
    public function update(){
        /* 实例化模型*/
        $db=D('tp_customer');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }
    
    
    
    
}