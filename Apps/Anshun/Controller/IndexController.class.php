<?php
namespace Anshun\Controller;
class IndexController extends WebInfoController {    
    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆
        $where=array('prodid'=>$_SESSION[$JC]['id']);
        $pic=M('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        $map=array('prodid'=>$_SESSION[$JC]['id'],'istj'=>1,'state'=>5);
        $data=M('tp_product')->where($map)->order('utime desc')
            ->field("productId,mark,name,state,money,smoney,num,istj,cate,path,img,utime")           
            ->select();
        $this->assign('data',$data);
        
        $this->display();
   }
}