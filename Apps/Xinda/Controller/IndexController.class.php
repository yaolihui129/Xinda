<?php
namespace Xinda\Controller;
use Think\Controller;
class IndexController extends WebInfoController {
    
    public function index(){
        //获取页面信息
        WebInfoController::getWebInfo();
        //微信公众号免登陆
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];        
        WebInfoController::weiXinLogin($appid, $openid);
        
//        //广告轮播图
//         $m=D('tp_ad');
//         $where['prodid']=6;
//         $pic=$m->where($where)->order('utime desc')->select();
//         $this->assign('pic',$pic);
        
        $m=D('xd_prodservice');
        $where['istj']=1;
        $where['state']='发布';
        $data=$m->where($where)
        ->field("id,mark,name,state,content,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data); 
        
        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
       
}