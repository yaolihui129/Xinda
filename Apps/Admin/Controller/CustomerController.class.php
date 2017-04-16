<?php
namespace Admin\Controller;
class CustomerController extends CommonController {

	public function index(){
	    /* 接收参数*/
	    $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
	    $page=!empty($_GET['page']) ? $_GET['page'] : 1;
	    $this->assign('search',$search);
	    $maxPageNum=10;	    
	    $where['prodid']=$_SESSION['prodid'];
	    $where['phone|pincodes|realname']=array('like','%'.$search.'%');
	    $m=D('tp_customer');
	    $data=$m->where($where)->page($page,$maxPageNum)->select();
	    
        $this->assign('data',$data);
         
	    $this->display();
    }
    
   public function add(){
       /* 接收参数*/
       $tpid=$_GET['tpid'];
       $m=D($_SESSION['db'].'customer');
       $where['tpid']=$tpid;
       $data=$m->where($where)->find();
       if ($data){
           $this->error("TA已经是你的客户，无需重复添加");
       }else {
           $this->assign('tpid',$tpid);           
           $this->display();
       }
       
      
   }

    public function insert(){

        /* 实例化模型*/
        $m=D($_SESSION['db'].'customer');     
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
    
    public function search(){
        /* 接收参数*/
        $search=$_POST['search'];
        $map['realname|phone']=array('like','%'.$search.'%');
        /* 实例化模型*/
        $m=M('tp_customer');
        $arr=$m
        ->join('zt_'.$_SESSION['db'].'customer ON zt_tp_customer.id =zt_'.$_SESSION['db'].'customer.tpid')
        ->where($map)->order('zt_'.$_SESSION['db'].'customer.utime desc')->select();
        $this->assign('data',$arr);
        $search=array("search"=>$search);
        $this->assign('w',$search);
         
        $this->display('index');
         
    }
    

    public function mod(){

        /* 实例化模型*/
		$m=D($_SESSION['db'].'customer');
 
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->assign('w',$where);
        $this->assign("state", PublicController::stateSelect($arr['state'],"state","state"));
        

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D($_SESSION['db'].'customer');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M($_SESSION['db'].'customer');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

    public function photo(){
        /* 接收参数*/
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=M($_SESSION['db'].'customer');
        $arr=$m->find($id);
        $this->assign('user',$arr);
         
        $this->display();
    
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
            $db=D($_SESSION['db'].'customer');
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
    
    public function create(){
        
        $this->display();
    }


}