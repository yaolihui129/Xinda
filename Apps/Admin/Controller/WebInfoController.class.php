<?php
namespace Admin\Controller;
use Think\Controller;
class WebInfoController extends Controller {        
    function _empty(){//错误网页重新定向到首页
        $this->redirect(C(PRODUCT).'/Index/test');
    }  
    function getMume(){//获取菜单
        $mume=M('tp_userprod')->where(array('userid'=>$_SESSION['id']))->select();
        $this->assign('mume',$mume);
        
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    }
    function changeProd(){ //更换产品      
        $_SESSION['prodid']=$_GET['prodid'];
        $this->redirect('/Admin/Index');
    }
    

}