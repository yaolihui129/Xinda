<?php
namespace Tuocai\Controller;
use Think\Controller;
class ServiceController extends Controller {
    public function Index(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(2);
        $_SESSION['Tuocai']=$data;
        $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        $m=D('tc_prodservice');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
                
        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
    
    
    
}