<?php
namespace Tpyjd\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){

        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
       
}