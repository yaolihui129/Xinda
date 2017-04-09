<?php
namespace Xinda\Controller;
class IndexController extends WebInfoController {   
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息               
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];               
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆        
        $where=array('istj'=>1,'state'=>'发布');
        $data=D('xd_prodservice')->where($where)->order('utime desc')
            ->field("id,mark,name,state,content,money,smoney,num,istj,cate,path,img,utime")        
            ->select();
        $this->assign('data',$data);        
        $this->display();
    }               
}