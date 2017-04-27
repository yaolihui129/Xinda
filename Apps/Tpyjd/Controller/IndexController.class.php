<?php
namespace Tpyjd\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $m=M('newcrmapi');
        $arr=$m->field('otable')->group('otable')->select();
        $this->assign('arr',$arr);
        if ($_GET['otable']){//如果有URL参数，从参数取值
            $_SESSION['newOtable']=$_GET['otable'];
        }else {//如果都没有，给默认值
            if(!$_SESSION['newOtable']){
                $_SESSION['newOtable']="潜客表";
            }
        }
        $this->assign('otable',$_SESSION['newOtable']);
        $data=$m->join('LEFT JOIN tpyjd_newoldcrm ON tpyjd_newoldcrm.newcrm =tpyjd_newcrmapi.id')
        ->where(array('tpyjd_newcrmapi.otable'=>$_SESSION['newOtable']))
        ->order('tpyjd_newcrmapi.otable,tpyjd_newcrmapi.id')
        ->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    
    public function mod(){
        $arr=D('newoldcrm')->find($_GET[id]);
        $this->assign('arr',$arr);
          
        $this->display();
    }
    
    
    public function update(){
        if (D('newoldcrm')->save($_POST)){
            $this->success("修改成功！",U('index'));
        }else{
            $this->error("修改失败！");
        }
    }
    

    public function shanchu(){
        $count =D('newoldcrm')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
       
}