<?php
namespace Xiuli\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function index(){

         $m=D('product');
         $data=$m->field('web,adress,keywords,desc,phone,tel,qq,url,record,path,img')->find(1);
         $_SESSION['Xiuli']=$data;
         $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
         $_SESSION['ip']=get_client_ip();
         $_SESSION['browser']=GetBrowser();
         $_SESSION['os']=GetOs();
        
        $this->display();
    }
    
    
    
    
    
}