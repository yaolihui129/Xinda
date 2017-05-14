<?php
namespace Admin\Controller;
class StaffController extends CommonController {
    public function index(){
        /* 接收参数*/
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        $this->assign('search',$search);
        $maxPageNum=10;        
        $where['prodid']=$_SESSION['prodid'];
        $where['username']=array('like','%'.$search.'%');       
        $data=M('tp_staff')->where($where)->page($page,$maxPageNum)->select();
        $this->assign('data',$data);       
        
        $this->display();
    }
    
    
    
    public function add(){

        $this->display();
    }
    
    
    public function insert(){
        $m=D('tp_staff');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/Staff/'; // 设置附件上传目录
        $info  =   $upload->upload();
    
        if(!$info) {// 上传错误提示错误信息或没有上传图片
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){
                $this->success("成功",U('index'));
            }else{
                $this->error('失败');
            }
        }else{// 上传成功 获取上传文件信息
            $_POST['img']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){//等比例缩放
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $this->success("成功",U('index'));
            }else{
                $this->error('失败');
            }
        }
    }
    
    public function mod(){
        /* 实例化模型*/
        $m=D('tp_staff');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
    
        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/Staff/'; // 设置附件上传目录
        $info  =   $upload->upload();//上传图片
        if(!$info) {// 上传错误提示错误信息
            if (D('tp_staff')->save($_POST)){
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }else{
            $_POST['img']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
            if (D('tp_staff')->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }
    }
    
    
    
}