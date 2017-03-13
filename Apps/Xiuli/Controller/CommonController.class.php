<?php
namespace Xiuli\Controller;
use Think\Controller;
class CommonController extends Controller{
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['Xiuli']['isCLogin']) || $_SESSION['Xiuli']['userid']==''){
            $this->redirect('Xiuli/Login');

        }
    }
}
