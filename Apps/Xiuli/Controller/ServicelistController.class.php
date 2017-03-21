<?php
namespace Xiuli\Controller;
use Think\Controller;
class ServicelistController extends Controller {
    public function index(){

        $m=D('product');
        $data=$m->field('web,adress,keywords,desc,phone,tel,qq,qz,url,record,path,img')->find(1);
        $_SESSION['Xiuli']=$data;
        $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
                            
        $where['prodid']=1;
        $where['state']='正常';
        $m=D('xl_cate');
        $arr=$m->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);

        $m=D('xl_prodservice');
        $map['state']='发布';
        if($_GET['cate']){
            $map['cate']=$_GET['cate'];               
            $data=$m->where($map)
            ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
            ->order('sn,id')->select();
        }else {
            $map['istj']=1;
            $data=$m->where($map)
            ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
            ->order('utime desc')->select();
        }
                   
            $this->assign('data',$data);
            $this->assign('cate',$_GET['cate']);
                  
        $this->display();
    }   
    
    
    public function _empty(){
    
        $this->display('index');
    }
}