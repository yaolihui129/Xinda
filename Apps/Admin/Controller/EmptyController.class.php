<?php
namespace Admin\Controller;
use Think\Controller;
class EmptyController  extends Controller {
    public function index(){       
        $this->error('您访问的网页不存在',U('/Admin/Index'));
    }
    
}