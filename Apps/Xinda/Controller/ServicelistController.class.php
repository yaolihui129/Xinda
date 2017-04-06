<?php
namespace Xinda\Controller;
class ServicelistController extends WebInfoController {
    public function _empty(){    
        $this->display('index');
    }    
    public function index(){           
        WebInfoController::getWebInfo();//获取页面信息
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];        
        WebInfoController::weiXinLogin($appid, $openid);//微信公众号免登陆
        $where=array('state'=>'正常');
        $arr=D('xd_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
        $map['state']='发布';
        $m=D('xd_prodservice');
        if($_GET['cate']){
            $map['cate']=$_GET['cate'];
            $data=$m->where($map)->order('utime desc')
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->select();
        }else {
            $data=$m->where($map)->order('utime desc')
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->select();
        }
        $this->assign('data',$data);
        $this->assign('cate',$_GET['cate']);                  
        $this->display();
    }
    
    
    
    
    
    
}