<?php
namespace Mtsh\Controller;
use Think\Controller;
class ServicelistController extends Controller {
    public function index(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(3);
        $_SESSION['Mtsh']=$data;
        $_SESSION['Mtsh']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs(); 
            
        $where['prodid']=3;            
        $m=D('mt_cate');
        $arr=$m->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);

        $m=D('mt_prodservice');
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
    
    
    
}