<?php
namespace Admin\Controller;
class CommonController extends WebInfoController{
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['isLogin']) || $_SESSION['realname']==''){
            $this->redirect('Admin/Login');
        }
        $this->getMume();//获取菜单权限
        
    }







}
