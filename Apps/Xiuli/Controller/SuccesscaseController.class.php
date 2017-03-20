<?php
namespace Xiuli\Controller;
use Think\Controller;
class SuccesscaseController extends Controller {
    public function index(){
        
        $this->display();
        
    }
    
    
    public function _empty(){
    
        $this->display('index');
    }
}