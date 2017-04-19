<?php
namespace Demo\Controller;
class IndexController extends WebInfoController {
    public function index(){ 
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息  
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆
        $where=array('prodid'=>$_SESSION[$JC]['id']);
        $pic=D('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic); 
        
        $where=array('prodid'=>$_SESSION[$JC]['id'],'istj'=>1,'state'=>5);
        $data=D('tp_product')->where($where)
                ->field("productId,mark,name,state,money,smoney,num,istj,utime")
                ->order('utime desc')
                ->select();
        $this->assign('data',$data);

        $this->display();
    }  
}