<?php
namespace Anshun\Controller;
use Think\Controller;
class SuccesscaseController extends Controller {
    
    public function _empty(){
    
        $this->display('index');
    }
    
    public function index(){
        
        $this->display();
        
    }
}