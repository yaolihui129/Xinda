<?php
namespace TAdmin\Controller;
class DatacaseController extends CommonController{
    public function mod(){
        /* 实例化模型*/
        $where=array("funcid"=>$_GET['funcid']);
        $this->assign('w',$where);
        $data=M('tp_element')->where($where)->order('sn')->select();
        $this->assign('data',$data);

        $m=M('tp_case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $this->display();

    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('case')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }
    
}