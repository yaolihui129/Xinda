<?php
namespace Runzhu\Controller;
use Think\Controller;
class ServicelistController extends Controller {
    public function index(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(7);
        $_SESSION['Runzhu']=$data;
        $_SESSION['Runzhu']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs(); 
            
        $where['prodid']=7;            
        $m=D('rz_cate');
        $arr=$m->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
            
        $m=D('rz_prodservice');
        $map['state']='发布';
        if($_GET['cate']){
          $map['cate']=$_GET['cate'];
          $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
        }else {
          $data=$m->where($map)->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->limit(12)->select();
        }
                   
        $this->assign('data',$data);
                  
        $this->display();
    }
    
    
    public function _empty(){
    
        $this->display('index');
    }
    
    
    
}