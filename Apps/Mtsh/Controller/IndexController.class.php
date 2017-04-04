<?php
namespace Mtsh\Controller;
use Think\Controller;
class IndexController extends Controller {
    
    public function _empty(){
    
        $this->display('index');
    }
    
    public function index(){        
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(3);
        $_SESSION['Mtsh']=$data;
        $_SESSION['Mtsh']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();

         
        $m=D('tp_ad');
        $where['prodid']=3;
        $pic=$m->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        
        $m=D('mt_prodservice');
        $where['istj']=1;
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data);
        
        $this->display();
        
    }
    
    
        
}