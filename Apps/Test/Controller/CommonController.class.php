<?php
namespace Test\Controller;
class CommonController extends WebInfoController{
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['isCLogin']) || $_SESSION['custid']==''){
            $this->redirect('Test/Login');

        }
    }
    
   
}
