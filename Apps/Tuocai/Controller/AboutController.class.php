<?php
namespace Tuocai\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function index(){
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(2);
        $_SESSION['Tuocai']=$data;
        $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        $m=M('tp_hr');
        $where=array('state'=>"发布",'prodid'=>2);
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);
        
        $this->display();
    }
    
    
   
}