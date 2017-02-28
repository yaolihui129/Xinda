<?php
namespace Tuocai\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(2);
        $_SESSION['Tuocai']=$data;
        $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();                                 
       
        $m=D('tp_ad');
        $where['prodid']=2;
        $pic=$m->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        
        $m=D('tc_prodservice');
        $where['istj']=1;
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data);
        
        $map['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
        $map['state']="发布";
        $m=M('tc_customer');
        $arr=$m->where($map)->order('utime desc')->select();
        $this->assign('arr',$arr);                
        
        $this->display();
    }
       
}