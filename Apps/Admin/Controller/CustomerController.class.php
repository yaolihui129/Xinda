<?php
namespace Admin\Controller;
class CustomerController extends CommonController {
	public function index(){
	    /* 接收参数*/
	    $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
	    $this->assign('search',$search);
	    $page=!empty($_GET['p']) ? $_GET['p'] : 1;
	    
	    $maxPageNum=10;	    
	    $where['prodid']=$_SESSION['prodid'];
// 	    $where['wxopenid']=array('like','%'.$search.'%');
	    $m=M('tp_customer');
	    $data=$m->where($where)->page($page,$maxPageNum)->select();
        $this->assign('data',$data);

	    $this->display();
    }
    
   public function add(){
       /* 接收参数*/
       $m=D('tp_customer');
       $where['creditId']=$_GET['creditId'];
       $data=$m->where($where)->find();
       if ($data){
           $this->error("TA已经是你的客户，无需重复添加");
       }else {
           $this->assign('creditId',$_GET['creditId']);           
           $this->display();
       }

   }

    public function insert(){

        /* 实例化模型*/
        $m=D($_SESSION['tp_customer']);     
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['ctime']=time();
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
    
    public function mod(){
        $arr=D('tp_customer')->find($_GET[id]);
        $this->assign('arr',$arr);      

        $this->display();
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_customer')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
     
    public function img(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     9145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =  './Upload/'.$_SESSION['qz'];// 设置附件上传目录
        $upload->savePath  = '/Customer/'; // 设置附件上传目录
    
        $info  =   $upload->upload();

        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            /* 实例化模型*/
            $db=D('tp_customer');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);               
                $image->thumb(245, 160)->save('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
    }

}