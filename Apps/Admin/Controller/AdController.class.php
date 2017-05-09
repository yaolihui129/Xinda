<?php
namespace Admin\Controller;
class AdController extends CommonController {
    public function index(){
        $where=array('prodid'=>$_SESSION['prodid']);
        $data=M('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('data',$data);        
    
        $this->display();
    }
    public function add(){

        $this->display();
    }
    
    public function insert(){
            
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/Ad/'; // 设置附件上传目录
        $info  =   $upload->upload();
        $m=D('tp_ad');
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
        $arr=M('tp_ad')->find($_GET[id]);
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
        $upload->savePath = '/Ad/'; // 设置附件上传目录
        $info  =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息或没有上传图片
            if (D('tp_ad')->save($_POST)){
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }else {
            $_POST['img']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
            if (D('tp_ad')->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }
    }
    
    public function fabu(){
        $arr['id']=$_GET['id'];
        $arr['moder']=$_SESSION['realname'];
        if ($_GET['state']=='5'){
            $arr['state']="1";
            if (D('tp_ad')->save($arr)){
                $this->success("下线成功！");
            }else{
                $this->error("失败！");
            }          
        }else{
            $arr['state']="5";
            if (D('tp_ad')->save($arr)){
                $this->success("发布成功！");
            }else{
                $this->error("失败！");
            }
        }   

    }

    public function del(){
        $count =M('tp_ad')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}