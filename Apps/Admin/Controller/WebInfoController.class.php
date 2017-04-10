<?php
namespace Admin\Controller;
use Think\Controller;
class WebInfoController extends Controller {        
    function _empty(){//错诶网页重新定向到首页
        $this->redirect(C(PRODUCT).'/Index/test');
    }  
    function getMume(){
        $mume=M('tp_userprod')->where(array('userid'=>$_SESSION['id']))->select();
        $this->assign('mume',$mume);
        
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    }
    

}