<?php
namespace Xinda\Controller;
class IndexController extends WebInfoController {
    public function _empty(){    
        $this->display('index');
    }
    public function index(){
        WebInfoController::getWebInfo();//获取页面信息        
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];        
        WebInfoController::weiXinLogin($appid, $openid);//微信公众号免登陆        
        $where=array('istj'=>1,'state'=>'发布');
        $data=D('xd_prodservice')->where($where)->order('utime desc')
            ->field("id,mark,name,state,content,money,smoney,num,istj,cate,path,img,utime")        
            ->select();
        $this->assign('data',$data);        
        $this->display();
    }               
}