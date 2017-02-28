<?php
namespace Test\Controller;
use Think\Controller;
class ExesceneController extends Controller {
    public function index(){
        /* 接收参数*/
        $id=$_GET['id'];
        /* 实例化模型*/      
        $m = D("tp_exescene");
        $arr=$m->find($id);
        $this->assign('arr',$arr);
        dump($arr);
        
    }
        
        
}