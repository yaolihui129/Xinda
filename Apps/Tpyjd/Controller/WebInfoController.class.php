<?php
namespace Tpyjd\Controller;
use Think\Controller;
class WebInfoController extends Controller {        
    function _empty(){//错误网页重新定向到首页
        $this->redirect(C(PRODUCT).'/Index');
    }  
    
    

}