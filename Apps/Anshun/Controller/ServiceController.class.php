<?php
namespace Anshun\Controller;
class ServiceController extends WebInfoController {    
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息 
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆
        $arr=D('as_prodservice')->find($_GET['id']);
        $this->assign('arr',$arr);       
        $this->display();
    } 
}