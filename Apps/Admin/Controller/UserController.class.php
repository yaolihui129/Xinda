<?php
namespace Admin\Controller;
class UserController extends CommonController {
    public function index(){
        $where['deleted']=1;
//         $where['dept']=$_SESSION['prodid'];
        $arr=M('user')->where($where)->select();
        $this->assign('data',$arr);
        $this->display();
    }

    public  function add(){

        $m=M('tp_admin');
        
        $where['prodid']=$_SESSION['prodid'];
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);
        $this->assign("state", formselect($user['state'],"adminst","state"));

        $this->display();
    }

    public function insert(){

        $m=D('tp_admin');
        $_POST['password']=md5("123456");
        $_POST['username']=$_POST['phone'];
        $_POST['prodid']=$_SESSION['prodid'];
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_admin');
        $where['prodid']=$_SESSION['prodid'];
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);

        $user=$m->find($id);
        $this->assign('user',$user);
        $this->assign("state", formselect($user['state'],"adminst","state"));

        $this->display();
    }

    
    public function search(){       
        /* 接收参数*/       
        $search=$_POST['search'];               
        /* 实例化模型*/
        $m=M('tp_admin');    
        $map['phone']=array('like','%'.$search.'%');
        $map['prodid']=$_SESSION['prodid'];
        $arr=$m->where($map)->select();
        $this->assign('data',$arr);       
        $where=array("search"=>$search);
        $this->assign('w',$where);        
         
        $this->display('index');
         
    }
   

    public function photo(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_admin');
        $where=array("state"=>"在职");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);

        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }


    public function update(){
        /* 实例化模型*/
        $db=D('tp_admin');
        
        dump($_POST);
        $_POST['moder']=$_SESSION['realname'];
        if ($_POST['img']){
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize   =     3145728 ;// 设置附件上传大小
            $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
            $upload->rootPath  =  './Upload/'.$_SESSION['qz'];// 设置附件上传目录
            $upload->savePath  = '/user/'; // 设置附件上传目录
            // 上传文件
            $info  =   $upload->upload(); 
            dump($info);
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }else{// 上传成功 获取上传文件信息
                $_POST['path']=$info['img']['savepath'];
                $_POST['img']=$info['img']['savename'];
                /* 实例化模型*/
                
                if ($db->save($_POST)){
                    $this->success("修改成功！");
                }else{
                    $this->error("修改失败！");
                }
            }
            
        }else {
            
            if ($db->save($_POST)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
        }
        
        
        
        
    }

 public function setpass(){
        /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('tp_admin');
        
        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }

 public function set(){
       /* 接收参数*/
       $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
       $pass1= $_POST['pass1'];
       $pass2= $_POST['pass2'];
       $pass3= $_POST['pass3'];
       /* 实例化模型*/
        $m=M('tp_admin');        
        $user=$m->find($id);
        if (md5($pass1)==$user['password']) {
            if ($pass2==$pass3) {
                $arr['id']=$id;
                $arr['password']=md5($pass2);
                $arr['moder']=$_SESSION['realname'];
                if ($m->save($arr)){
                        $this->success("密码修改成功！");
                }else{
                        $this->error("密码修改失败！");
                }

            }else{
                $this->error('新密码和确认面不一致');
            }
        }else{
            $this->error('原密码错误');
        }


 }


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
   	    $m=M('tp_admin');

   	    $count =$m->delete($id);
   	    if ($count>0) {
   	        $this->success('删除成功');
   	    }else{
   	        $this->error('删除失败');
   	    }
    }
}