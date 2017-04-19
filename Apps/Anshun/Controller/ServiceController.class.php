<?php
namespace Anshun\Controller;
class ServiceController extends WebInfoController {    
    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆
        $arr=D('tp_product')->find($_GET['id']);
        $this->assign('arr',$arr);       
        $this->display();
    } 
}