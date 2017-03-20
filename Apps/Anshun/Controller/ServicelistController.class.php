<?php
namespace Anshun\Controller;
use Think\Controller;
class ServicelistController extends Controller {
    
    public function _empty(){
    
        $this->display('index');
    }
    
    public function index(){

         $m=D('product');
         $data=$m->field('web,adress,keywords,desc,phone,tel,qq,url,record,path,img')->find(4);
         $_SESSION['Anshun']=$data;
         $_SESSION['Anshun']['img']=$data['path'].$data['img'];
         $_SESSION['ip']=get_client_ip();
         $_SESSION['browser']=GetBrowser();
         $_SESSION['os']=GetOs();
            
            $where['prodid']=4;
            $where['state']='正常';
            $m=D('as_cate');
            $arr=$m->where($where)->order('sn')->select();                        
            $this->assign('arr',$arr);

            $m=D('as_prodservice');
            $map['state']='发布';
            if($_GET['cate']){
                $map['cate']=$_GET['cate'];                
                $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('sn')->select();
            }else {
                $data=$m->where($map)->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->limit(12)->select();
            }
                   
            $this->assign('data',$data);
            $this->assign('cate',$_GET['cate']);
                  
        $this->display();
    }
    
    
    
}