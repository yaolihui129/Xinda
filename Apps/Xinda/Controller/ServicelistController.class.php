<?php
namespace Xinda\Controller;
use Think\Controller;
class ServicelistController extends WebInfoController {
        public function index(){
            
            //获取页面信息
            WebInfoController::getWebInfo();
            //微信公众号免登陆
            $appid  = $_GET['wxAppId'];
            $openid = $_GET['wxOpenId'];        
            WebInfoController::weiXinLogin($appid, $openid);
            
                     
            $m=D('xd_cate');
            $where['state']='正常';
            $arr=$m->where($where)->order('sn')->select();                        
            $this->assign('arr',$arr);
            
            $map['state']='发布';
            $m=D('xd_prodservice');
            if($_GET['cate']){
                $map['cate']=$_GET['cate'];
                
                $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
            }else {
                $data=$m->where($map)->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
            }
                   
            $this->assign('data',$data);
            $this->assign('cate',$_GET['cate']);
                  
        $this->display();
    }
    
    
    public function _empty(){
    
        $this->display('index');
    }
    
    
    
}