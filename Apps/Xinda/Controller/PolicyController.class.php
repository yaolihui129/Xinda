<?php
namespace Xinda\Controller;
class PolicyController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        if($_SESSION['isCLogin']==C(PRODUCT)){//已经登录跳过          
        }else {//未登录  
            if(I('wxAppId')){
                $this->weiXinLogin(I('wxAppId'), I('wxOpenId'));
            }
        }
        $arr=M('tp_policy')->find(I('id'));
        $this->assign('arr',$arr);
        
        $this->display();
    }
    
}