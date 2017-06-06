<?php
namespace TestAdmin\Controller;
use Think\Controller;
class EmptyController  extends Controller {
    public function index(){
        $this->display('public/404');
    }
    
}