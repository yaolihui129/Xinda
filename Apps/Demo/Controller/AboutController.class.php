<?php
namespace Demo\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function About(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(12);
        $_SESSION['Demo']=$data;
        $_SESSION['Demo']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();                 
        
        $this->display();
    }
    
    
    
}