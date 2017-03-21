<?php
namespace Xiuli\Controller;
use Think\Controller;
class ServiceController extends Controller {
    public function index(){

       $m=D('product');
       $data=$m->field('web,adress,keywords,desc,phone,tel,qq,qz,url,record,path,img')->find(1);
       $_SESSION['Xiuli']=$data;
       $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
       $_SESSION['ip']=get_client_ip();
       $_SESSION['browser']=GetBrowser();
       $_SESSION['os']=GetOs();                                    
        
       $m=D('xl_prodservice');
       $arr=$m->find($_GET['id']);
       $this->assign('arr',$arr);
                
       $this->display();
    }   
    
    
    public function _empty(){
    
        $this->display('index');
    }
}