<?php
namespace Admin\Controller;
use Think\Controller;
class SettingController extends Controller {
    public function index(){
        /* 接收参数*/
        $prodid=!empty($_GET['id']) ? $_GET['id'] : $_SESSION['prodid'];
         
        $m=D('product');
        $data=$m->find($prodid);
        //重置SESSION
        $_SESSION['prodid']=$prodid;
        $_SESSION['qz']=$data['qz'];
        $_SESSION['db']=$data['db'];               
        $this->assign('arr',$data);
         
        $this->display();
    }
    
  
    public function img(){

        $upload = new \Think\Upload();// 实例化上传类
//         $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.$_SESSION['qz'];// 设置附件上传目录
        $upload->savePath  = '/Setting/'; // 设置附件上传目录
        
        $info  =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            /* 实例化模型*/
            $db=D('product');
            if ($db->save($_POST)){
                /*剪裁图片从中央剪裁800*400*/
//                 $image = new \Think\Image();
//                 $image->open('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);
//                 $image->thumb(800, 400,\Think\Image::IMAGE_THUMB_CENTER)->save('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
        
    }
    
    public function update(){
        $db=D('product');        
        $_POST['moder']=$_SESSION['realname'];              
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
}