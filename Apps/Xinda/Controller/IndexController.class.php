<?php
namespace Xinda\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(6);
        $_SESSION['Xinda']=$data;
        $_SESSION['Xinda']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();                              
//        //广告轮播图
//         $m=D('tp_ad');
//         $where['prodid']=6;
//         $pic=$m->where($where)->order('utime desc')->select();
//         $this->assign('pic',$pic);
        
        $m=D('xd_prodservice');
        $where['istj']=1;
        $where['state']='发布';
        $data=$m->where($where)
        ->field("id,mark,name,state,content,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data); 
        
        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
       
}