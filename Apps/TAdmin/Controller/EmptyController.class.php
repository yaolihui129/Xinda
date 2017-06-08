<?php
namespace TAdmin\Controller;
use Think\Controller;
class EmptyController  extends Controller {
    public function index(){
        $this->redirect('TAdmin/Login/index');
    }
    
}