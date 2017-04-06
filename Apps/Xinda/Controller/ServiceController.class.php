<?php
namespace Xinda\Controller;
use Think\Controller;
class ServiceController extends WebInfoController {
    public function index(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(6);
        $_SESSION['Xinda']=$data;
        $_SESSION['Xinda']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        $m=D('xd_prodservice');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
                
        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
    
}