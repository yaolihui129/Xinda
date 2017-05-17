<?php
namespace Runzhu\Controller;
class IndexController extends WebInfoController {
    public function index(){               
        
        
        if($_SESSION[isCLogin]==C('PRODUCT')){//未登录
             
        }else {
            if($_GET['wxOpenId']){//微信免登陆
                $this->weiXinLogin($_GET['wxAppId'],$_GET['wxOpenId']);
            }
        }
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(7);
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
      
}