<?php
namespace Tpyjd\Controller;
use Think\Controller;
class LoginController extends Controller {
    //登录接口 
    public function login(){
        //封装接口地址
        $url=PublicController::getUrl()."/distributor.action";
        $postArr=array(
            "serviceName"=>"clogin",
            "username"=>"guoxiao@zhubaijia.com",
            "password"=>"111111"           
        );
        $postJson=json_encode($postArr);
        dump($postJson);
        //发送新增客户请求
        $res= httpPost($url, $postJson);
        $resArr=json_decode($res,true);
        //存储到SESSION
        $_SESSION=$resArr;

    }
    //注销接口
    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }        
        session_destroy();// 销毁sesstion
        $date='退出成功';
        $this->ajaxReturn($data);

    }
}