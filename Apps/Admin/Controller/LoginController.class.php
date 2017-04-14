<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        
        $this->display();
    }

    public function login(){
        $m=D('user');
        $where=array('account'=>$_POST['username'],'password'=>md5($_POST['password']));
        $user=$m->where($where)->field('id,account,realname,usergp,path,img')->find();
        
        if($user){           
            $_SESSION=$user;
            $_SESSION['isLogin']='Admin';
            $where=array('userid'=>$user['id']);
            $m=M('tp_userprod');
            $arr=$m->where($where)->select();
            $_SESSION['prodid']=$arr[0]['prodid'];
            $this->redirect('/Admin/Index/index');
        }else {
            $m = D('tp_admin');
            $where=array('username'=>$_POST['username'],'password'=>md5($_POST['password']));
            $user=$m->where($where)->field('id,username,realname,prodid,path,photo',false)->find();
            if ($user){               
                $_SESSION=$user;
                $_SESSION['isLogin']=2;
                $this->redirect('/Admin/Product');
            }else{           
                $this->error('用户或密码错误，请重新登陆！', "index");
            }
        }                              
    }

    public function logout(){

        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }       
        session_destroy();// 销毁sesstion
        $this->redirect('index'); //重定向到登录页
  
    }
}