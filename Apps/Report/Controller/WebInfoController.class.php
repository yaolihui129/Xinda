<?php
namespace Report\Controller;
use Think\Controller;
class WebInfoController extends Controller {  
    function _empty(){//空方法
       //错误网页重新定向到首页
       $this->display('index');
    }

}