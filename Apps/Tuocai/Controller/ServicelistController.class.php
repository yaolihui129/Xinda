<?php
namespace Tuocai\Controller;
class ServicelistController extends WebInfoController {
    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息    
        $where=array('prodid'=>C('PRODID'),'state'=>1); 
        $arr=M('tp_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
        $map['prodid']=C('PRODID');
        $map['state']=5;
        if($_GET['cate']){
           $map['cateId|pidCateId']=$_GET['cate'];
           $this->assign('cate',getCatname($_GET['cate']));
           $data=M('tp_product')->where($map)
                ->field("id,name,money,smoney,num,img,utime")
                ->order('utime desc')->select();
        }else {
           $data=M('tp_product')->where($map)->field("id,name,money,smoney,num,img,utime")
           ->order('utime desc')->limit(12)->select();
           $this->assign('cate','推荐课程');
        }                   
        $this->assign('data',$data);                 
        $this->display();
    }
    
}