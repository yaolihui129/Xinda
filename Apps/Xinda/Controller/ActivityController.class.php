<?php
namespace Xinda\Controller;
class ActivityController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        if($_SESSION['isCLogin']==C(PRODUCT)){//已经登录跳过          
        }else {//未登录  
            if(I('wxAppId')){
                $this->weiXinLogin(I('wxAppId'), I('wxOpenId'));
            }
        }
        $arr=M('tp_activity')->find(I('id'));
        $this->assign('arr',$arr);
        
        $this->display();
    }

}