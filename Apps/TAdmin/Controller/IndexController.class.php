<?php
namespace TAdmin\Controller;
//use Think\Controller;
class IndexController  extends CommonController{

    public  function test(){
        $_SESSION['ip']= get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
             
        $this->display();
    }

}