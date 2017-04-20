<?php
namespace Demo\Controller;
use Think\Controller;
class ServiceController extends Controller {
    public function index(){
        //获取网页信息
        getWebInfo(C('PRODUCT')); 
        $this->assign('JC',C('PRODUCT')); 
        $arr=M('tp_product')->find($_GET['id']);
        $this->assign('arr',$arr);       
        
        $this->display();
    }   
}