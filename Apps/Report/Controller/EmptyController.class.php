<?php
namespace Report\Controller;
class EmptyController  extends WebInfoController {
    public function index(){
        //错误网页重新定向到首页
        $this->error('您访问的网页不存在',U(C(PRODUCT).'/Index/index'));
    }
    
}