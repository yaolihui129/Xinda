<?php
namespace Xinda\Controller;
class ServiceController extends WebInfoController {    
    public function _empty(){
        $this->display('index');
    }
    public function index(){
        WebInfoController::getWebInfo(); //获取页面信息       
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        WebInfoController::weiXinLogin($appid, $openid);//微信公众号免登陆
        $arr=M('xd_prodservice')->find($_GET['id']);
        $this->assign('arr',$arr);        
        $this->display();
    } 
}