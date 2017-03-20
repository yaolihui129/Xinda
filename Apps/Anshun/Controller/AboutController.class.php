<?php
namespace Anshun\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function index(){
       
       $m=D('product');       
       $data=$m->field('web,adress,keywords,desc,phone,tel,qq,url,record,path,img')->find(4);
       $_SESSION['Anshun']=$data;
       $_SESSION['Anshun']['img']=$data['path'].$data['img'];      
       $_SESSION['ip']=get_client_ip();
       $_SESSION['browser']=GetBrowser();
       $_SESSION['os']=GetOs();                          
                  
       $this->display();
    }
           
    public function hr(){
   
       $m=D('product');
       $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(4);
       $_SESSION['Anshun']=$data;
       $_SESSION['Anshun']['img']=$data['path'].$data['img'];
       $_SESSION['ip']=get_client_ip();
       $_SESSION['browser']=GetBrowser();
       $_SESSION['os']=GetOs();
    
       
        $m=M('tp_hr');
        $where=array("state"=>"发布");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);
       
        $this->display();
    }
    
    public function _empty(){
        
        $this->display('index');
    }
    
  
   
}