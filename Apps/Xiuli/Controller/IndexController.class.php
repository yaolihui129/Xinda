<?php
namespace Xiuli\Controller;
class IndexController extends WebInfoController {   
    public function index(){        
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
//         wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆
        $where=array('prodid'=>C('PRODID'));
        $pic=D('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic); 
        $m=M('tp_product');
        $where=array('prodid'=>C('PRODID'),'istj'=>1,'state'=>5);
        $data=$m->where($where)->order('utime desc')->field("productId,name,money,smoney,num,productImg,utime")->select();
        $this->assign('data',$data);
        
        $where=array('cateId'=>'2G3ddk','state'=>5);//发光字
        $data=$m->where($where)->order('utime desc')->field("productId,name,money,smoney,num,productImg,utime")->select();
        $this->assign('data1',$data);
        
        $where=array('cateId'=>'HDC6Vd','state'=>5);//文印
        $data=$m->where($where)->order('utime desc')->field("productId,name,money,smoney,num,productImg,utime")->select();
        $this->assign('data2',$data);
    
        $this->display();       
    }
    
    
   
}