<?php
namespace Xinda\Controller;
class IndexController extends WebInfoController {   
    public function index(){
        $this->assign('JC',C('PRODUCT'));
        getWebInfo(C('PRODUCT'));//获取网页信息
        if($_SESSION['isCLogin']==C(PRODUCT)){//已经登录跳过          
        }else {//未登录  
            if(I('wxAppId')){
                $this->weiXinLogin(I('wxAppId'), I('wxOpenId'));
            }
        }
        
        $where=array('prodid'=>C('PRODID'));
        $pic=M('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic); 

        $where=array('prodid'=>C('PRODID'),'istj'=>1,'state'=>5);
        $data=M('tp_product')->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data',$data);
        
        $this->display();
    }               
}