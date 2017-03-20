<?php
namespace Anshun\Controller;
use Think\Controller;
class IndexController extends Controller {
    
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
            
            $m=D('tp_ad');
            $where['prodid']=4;
            $pic=$m->where($where)->order('utime desc')->select();
            $this->assign('pic',$pic);
            
            $m=D('as_prodservice');
            $where['istj']=1;
            $data=$m->where($where)
            ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
            ->order('utime desc')
            ->select();
            $this->assign('data',$data);
            
            $this->display();
        }
}