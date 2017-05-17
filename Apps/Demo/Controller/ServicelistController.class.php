<?php
namespace Demo\Controller;
class ServicelistController extends WebInfoController {
    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息          
        $where=array('prodid'=>C('PRODID'),'state'=>1);
        $arr=M('tp_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);            
        if($_GET['cate']){
           $map=array('state'=>5,'cateId'=>$_GET['cate']);         
           $data=D('tp_product')->where($map)->field("productId,name,state,money,smoney,num,cateId,productImg,utime")->order('utime desc')->select();
        }else {
           $map=array('state'=>5);
           $data=D('tp_product')->where($map)->field("productId,name,state,money,smoney,num,cateId,productImg,utime")->order('utime desc')->limit(12)->select();
        }                  
        $this->assign('data',$data);
                  
        $this->display();
    }
   
}