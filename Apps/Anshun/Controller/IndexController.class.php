<?php
namespace Anshun\Controller;
class IndexController extends WebInfoController {    
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆
        $where=array('prodid'=>C('PRODUCT'));
        $pic=M('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        $map=array('istj'=>1);
        $data=M('as_prodservice')->where($map)->order('utime desc')
            ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")           
            ->select();
        $this->assign('data',$data);
        $this->display();
   }
}