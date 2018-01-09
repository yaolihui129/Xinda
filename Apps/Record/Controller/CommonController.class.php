<?php
namespace Record\Controller;
use Think\Controller;
class CommonController extends Controller {
    Public function _initialize(){// 初始化的时候检查用户权限        
        if(!isset($_SESSION['isLogin']) || $_SESSION['realname']==''){
            $this->redirect('Record/Login/index');
        }
    }
    
    public function _empty(){ //错误网页重新定向到首页       
        $this->redirect('public/404');
    }
    
    public function order(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += D(I('table'))->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
        }else{
            $this->error("排序失败...");
        }
    }
    
    public function insert(){
        $m=D(I('table'));
        if (IS_GET){
            $_GET['adder']=$_SESSION['realname'];
            $_GET['moder']=$_SESSION['realname'];
            $_GET['ctime']=date("Y-m-d H:i:s",time());
            if(!$m->create($_GET)){
                $this->error($m->getError());
            }
            if($m->add($_GET)){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }else {
            $_POST['adder']=$_SESSION['realname'];
            $_POST['moder']=$_SESSION['realname'];
            $_POST['createTime']=date("Y-m-d H:i:s",time());
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }       
    }
    //修改
    public function update(){
        if (IS_GET){
            $_GET['moder']=$_SESSION['realname'];
            if (D(I('table'))->save($_GET)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
        }else {
            $_POST['moder']=$_SESSION['realname'];
            if (D(I('table'))->save($_POST)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            } 
        }        
    }
    //逻辑删除
    public function del(){
        $_POST['moder']=$_SESSION['realname'];
        $_POST['delete']=1;
        if (D(I('table'))->save($_POST)){
            $this->success("删除成功！");
        }else{
            $this->error("删除失败！");
        }
    }
    
    //物理删除
    public function realdel(){
        $count =D(I('table'))->delete(I('id'));
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}