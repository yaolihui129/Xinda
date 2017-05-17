<?php
namespace Tuocai\Controller;
class ServiceController extends WebInfoController {
    public function Index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息  
        
        if($_SESSION[isCLogin]==C('PRODUCT')){//未登录
             
        }else {
            if($_GET['wxOpenId']){//微信免登陆
                $this->weiXinLogin($_GET['wxAppId'],$_GET['wxOpenId']);
            }
        }
        
        $arr=M('tp_product')->find($_GET['id']);
        $this->assign('arr',$arr);   
        
        $this->display();
    }
   
}