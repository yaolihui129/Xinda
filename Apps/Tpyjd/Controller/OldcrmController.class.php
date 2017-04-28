<?php
namespace Tpyjd\Controller;
class OldcrmController extends WebInfoController {
    public function index(){
        $m=M('oldcrm');
        $arr=$m->field('otable')->group('otable')->select();
        $this->assign('arr',$arr);
        if ($_GET['otable']){//如果有URL参数，从参数取值
             $_SESSION['otable']=$_GET['otable'];
        }else {//如果都没有，给默认值
            if(!$_SESSION['otable']){
                $_SESSION['otable']="Account";
            }            
        }
        $this->assign('otable', $_SESSION['otable']);
        $this->assign("search",$_POST['search']);
        $where['otable']=$_SESSION['otable'];
        $where['name|nameApi|remark|type|usestate']=array('like','%'.$_POST['search'].'%');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    function unuse(){
        
        if (D('oldcrm')->save($_GET)){
            $this->success("修改成功！",U('index'));
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function mod(){
        $arr=D('oldcrm')->find($_GET[id]);
        $this->assign('arr',$arr);
    
        $this->display();
    }
    
    
    public function update(){
        if (D('oldcrm')->save($_POST)){
            $this->success("修改成功！",U('index'));
        }else{
            $this->error("修改失败！");
        }
    }
    
    
}