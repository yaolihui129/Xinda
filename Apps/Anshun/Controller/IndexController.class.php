<?php
namespace Anshun\Controller;
class IndexController extends WebInfoController {    
    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
        
        if($_SESSION[isCLogin]==C('PRODUCT')){//未登录
             
        }else {
            if($_GET['wxOpenId']){//微信免登陆
                $this->weiXinLogin($_GET['wxAppId'],$_GET['wxOpenId']);
            }
        }
        
        $where=array('prodid'=>C('PRODID'));
        $pic=D('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic); 
        
        $where=array('prodid'=>C('PRODID'),'istj'=>1,'state'=>5);
        $data=M('tp_product')->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data',$data);
        
        
        $this->display();
   }
}