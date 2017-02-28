<?php
namespace Admin\Controller;
use Org\Util\Date;

class PlanController extends CommonController {
    public function index(){
        $_SESSION['techclassid']=$_GET['techclassid'];
        $arr['riqi']=date("Y-m-d",time());
        $this->assign("p",$arr);
        $map['riqi']=$arr['riqi'];
        $m=M('tc_date');
        $arr=$m->where($map)->order('sn')->select();
        $this->assign('data',$arr);
        
        $this->display();
    }
    
    public function search(){
        /* 接收参数*/
       
        $map['riqi']=$_POST['riqi'];

        /* 实例化模型*/
        $m=D('dict');
        $where['type']="sktime";
        $where['state']="正常";
        $data=$m->field('k,v')->where($where)->select();
        $m=M('tc_date');
        $arr=$m->where($map)->order('sn')->select();
        if(!$arr){
            foreach ($data as $d){              
                $_POST['xingqi']=wk($_POST['riqi']);
                $_POST['sn']=$d['k'];
                $_POST['sktime']=$d['v'];
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $m->add();
            }
           $arr=$m->where($map)->order('sn')->select();
        }
      
        $this->assign('data',$arr);
        $where=array("riqi"=>$_POST['riqi']);
        $this->assign('p',$where);
        
         
        $this->display('index');
        
        
    }
    
    public function add(){
        $dateid=$_GET['dateid'];
        $m=D('tc_date');
        $arr=$m->find($_GET['dateid']);
        $this->assign('arr',$arr);

        $techclassid=$_SESSION['techclassid'];
        $m=D('tc_techclass');
        $data=$m->find($_SESSION['techclassid']);
        $this->assign('data',$data);
        
        $this->display();
    }
    
    
    public function insert(){
               
         /* 实例化模型*/
        $m=D('tc_plan');
        $_POST['state']='待确认';
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=time();
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
        $m=D('tc_plan');
        $arr=$m-find($_GET['id']);
        $this->assign('arr',$arr);
        
    }
}