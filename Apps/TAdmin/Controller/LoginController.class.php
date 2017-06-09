<?php
namespace TAdmin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        layout(false); // 临时关闭当前模板的布局功能
        $this->display();
    }

    public function login(){
        $where=array('account'=>$_POST['username'],'password'=>md5($_POST['password']));
        $user = D('user')->where($where)->field("id,dept,realname,usergp")->find();
        if ($user){
            session('[start]');
            $_SESSION=$user;
            $_SESSION['isLogin']=C(PRODUCT);
            $_SESSION['testgp']=$user['usergp'];

            $this->redirect('TAdmin/Index/index');
        }else{
            $this->error('用户或密码错误，请重新登陆！', "index");
        }

    }

    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }
        // 销毁sesstion
        session_destroy();
        $this->success($username.",再见!", "index");

    }


}