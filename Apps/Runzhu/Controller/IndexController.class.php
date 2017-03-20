<?php
namespace Runzhu\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){               

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(7);
        $_SESSION['Runzhu']=$data;
        $_SESSION['Runzhu']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs(); 

         
        $m=D('tp_ad');
        $where['prodid']=7;
        $pic=$m->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        
        $m=D('rz_prodservice');
        $where['istj']=1;
        $where['state']='发布';
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data);
        
        $this->display();
        
    }
    
    
    public function _empty(){
    
        $this->display('index');
    }
        
}