<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        layout(false); // 临时关闭当前模板的布局功能
        $this->display();
    }

    public function login(){
        $m=D('user');
        $where=array('account'=>$_POST['username'],'password'=>md5($_POST['password']));
        $user=$m->where($where)->find();
        if($user){
            session('[start]');
            $_SESSION=$user;
            $_SESSION['isLogin']=9;
            $this->redirect('/Admin/Index/test');
        }else {
            $m = D('tp_admin');
            $where=array('username'=>$_POST['username'],'password'=>md5($_POST['password']));
            $user=$m->where($where)->field('id,username,realname,prodid,path,photo',false)->find();
            if ($user){
                session('[start]');
                $_SESSION=$user;
                $_SESSION['isLogin']=2;
                $this->redirect('/Admin/Prodservice');
            }else{
            
                $this->error('用户或密码错误，请重新登陆！', "index");
            }
        }                              
    }

    public function logout(){
        $username =$_SESSION['username'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }
        // 销毁sesstion
        session_destroy();

        $this->success("再见 {$realname}, 退出成功!", "index");

    }
}