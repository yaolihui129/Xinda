<?php
namespace Tuocai\Controller;
class PlanController extends WebInfoController {
    
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息           
        $p=date("Y-m-d",time());
        $this->assign("p",$p);
        /* 实例化模型*/
        $m=D('tc_date');
        $where['riqi']=array('egt',date("Y-m-d",time()));
        $arr=$m->where($where)->order('riqi,sn')->limit(35)->select();
        $this->assign('arr',$arr);
        
        $teachclassid=$_GET['teachclassid'];
        $this->assign('teachclassid',$teachclassid);
        
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
        }
        $map['riqi']=array('egt',$_POST['riqi']);
        $arr=$m->where($map)->order('riqi,sn')->limit(35)->select();
        $this->assign('arr',$arr);
        $where=$_POST['riqi'];
        $this->assign('p',$where);   
         
        $this->display('index');       
    }

    
    public function insert(){
        /* 接收参数*/
        $_POST['teachclassid']=$_GET['teachclassid'];
        $_POST['dateid']=$_GET['dateid'];
        /* 实例化模型*/
        $m=D('tc_plan');
        $_POST['ctime']=time();
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        dump($_POST);
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error("失败");
        }
    
    }
    
    
    
    
}