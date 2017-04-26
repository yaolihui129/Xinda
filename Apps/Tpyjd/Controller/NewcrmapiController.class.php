<?php
namespace Tpyjd\Controller;
class NewcrmapiController extends WebInfoController {
    public function index(){
        $m=M('newcrmapi');
        $arr=$m->field('otable')->group('otable')->select();
        $this->assign('arr',$arr);
        if ($_GET['otable']){//如果有URL参数，从参数取值
            $_SESSION['newOtable']=$_GET['otable'];
        }else {//如果都没有，给默认值
            if($_SESSION['newOtable']){
                $_SESSION['newOtable']="潜客表";
            }            
        }
        $this->assign('otable',$_SESSION['newOtable']);
               
        $data=$m->where(array('otable'=>$_SESSION['newOtable']))->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    public function guanl(){
        if ($_GET['id']){
            $_SESSION['newcrmapiId']=$_GET['id'];
        }             
        $arr=M("newcrmapi")->find($_SESSION['newcrmapiId']);
        $this->assign("arr",$arr);      
        $this->assign("search",$_POST['search']);
//         dump($_SESSION);
        $m=M('oldcrm');
        $where['name|nameApi|otable']=array('like','%'.$_POST['search'].'%');       
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    
    public function insert(){
        $_POST['oldcrm']=$_GET['oldcrm'];
        $_POST['newcrm']=$_GET['newcrm'];
        $arr['id']=$_GET['newcrm'];
        $arr['oldcrm']=$_GET['oldcrm'];
        $m=D('newoldcrm');      
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
            D('newcrmapi')->save($arr);           
            $this->success("成功",U('index'));
        }else{
            $this->error("失败");
        }
    
    }
    
    
}