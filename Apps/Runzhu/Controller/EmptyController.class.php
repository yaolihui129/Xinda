<?php
namespace Runzhu\Controller;
class EmptyController  extends WebInfoController {
    public function index(){
        
        $this->error('您访问的网页不存在',U('/Runzhu/Index'));
    }
    
}