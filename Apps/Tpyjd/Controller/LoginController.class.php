<?php
namespace Tpyjd\Controller;
class LoginController extends WebInfoController {
    
    function getBinding(){       
        $serviceName="clogin";
        $username="test@yimin.la";
        $password="111111";
        $url=C('CRMURL');        
        $url=$url."?serviceName=".$serviceName."&userName=".$username."&password=".$password;
        $res=httpGet($url);      
        $res=json_decode($res,true);       
        return $res['binding'];
        
    }
    
    //登录接口
    public function login(){//封装接口地址    
        $url=PublicController::getUrl()."/distributor.action";
        $postArr=array(
            "serviceName"=>"clogin",
            "username"=>"test@yimin.la",
            "password"=>"111111"
         );
        $postJson=json_encode($postArr);
        //发送新增客户请求
        $res= httpPost($url, $postJson);
        $resArr=json_decode($res,true);                  
        $_SESSION=$resArr;
        dump($_SESSION);
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