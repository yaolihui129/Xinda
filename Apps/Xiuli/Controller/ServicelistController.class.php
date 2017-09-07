<?php
namespace Xiuli\Controller;
class ServicelistController extends WebInfoController {
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
        
        $where=array('prodid'=>C('PRODID'),'state'=>1); 
        $arr=M('tp_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
        $map['prodid']=C('PRODID');
        $map['state']=5;
        if($_GET['cate']){
           $map['cateId|pidCateId']=$_GET['cate'];
           $this->assign('cate',getCatname($_GET['cate']));
           
        }else {
           
           $this->assign('cate','推荐服务');
        } 
        $data=M('tp_product')->where($map)->order('utime desc')->limit(12)->select();       
        $this->assign('data',$data);  
       
        $this->display();
    }   
    
   
}