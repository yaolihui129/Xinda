<?php
namespace Record\Controller;
use Think\Controller;
class EmptyController  extends Controller {
    public function index(){
        //错误网页重新定向到首页
        $this->redirect('public/404');
    }
    
}