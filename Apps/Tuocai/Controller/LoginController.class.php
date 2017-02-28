<?php
namespace Tuocai\Controller;
use Think\Controller;
class LoginController extends Controller {

    public function login(){
         $m= D('tp_customer');
         $where['phone']=$_POST['phone'];
         $where['password']=md5($_POST['password']);
         $data=$m->where($where)->field('id,phone,realname')->find();
        dump($data);
        
        if ($data){
            session('[start]');
            $_SESSION=$data;
            $_SESSION['isCLogin']=2;
            $this->redirect('/Tuocai/Index');
        }else{

            $this->error('用户或密码错误，请重新登陆！');
        }

    }

    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }        
        session_destroy();// 销毁sesstion

        $this->success("再见 {$username}, 退出成功!");

    }
}