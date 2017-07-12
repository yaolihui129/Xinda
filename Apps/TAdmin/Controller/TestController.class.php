<?php
namespace TAdmin\Controller;
use Think\Controller;
class TestController extends Controller {
    public function index(){
        
        $this->display();
    }
    
    public function checkjo(){
        sleep(3);
        if(I('num')%2){            
             echo  '奇数';            
         }else {
             echo '偶数';
         }
    }
}