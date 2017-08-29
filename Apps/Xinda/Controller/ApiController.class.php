<?php
namespace Xinda\Controller;
use Think\Controller;
class ApiController extends Controller {
    public function test(){
               
        echo '您购买的是：'.I('name').'团购价格为：'.I('jiage');
    }
    
    public function upload(){
        if(IS_POST){
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize  =   3145728 ;// 设置附件上传大小
            $upload->exts   =   array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
            $upload->rootPath =   './Uploads/'; // 设置附件上传根目录
            $upload->savePath =   ''; // 设置附件上传（子）目录
            // 上传文件
            $info  =  $upload->upload();
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }else{// 上传成功 获取上传文件信息
                //插入到数据库中
            }
        }
    }
    
    public function createwt(){
        
    }
    
    public function insert(){
        $m=D(I('table'));
        if (IS_GET){
            $_GET['adder']=$_SESSION['realname'];
            $_GET['moder']=$_SESSION['realname'];
            $_GET['createTime']=date("Y-m-d H:i:s",time());
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
    
    public function update(){//修改
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
}