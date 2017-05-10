<?php
namespace Test\Controller;
use Think\Controller;
class WebInfoController extends Controller {  
    function _empty(){//空方法
        $this->display('index');
    }

}