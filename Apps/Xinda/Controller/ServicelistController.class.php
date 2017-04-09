<?php
namespace Xinda\Controller;
class ServicelistController extends WebInfoController {  
    public function index(){           
        getWebInfo(C('PRODUCT'));//获取网页信息 
        
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];        
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆     
        
        $where=array('state'=>'正常');
        $arr=D('xd_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
        $m=D('xd_prodservice');
        if($_GET['cate']){
            $map=array('cate'=>$_GET['cate'],'state'=>'发布');
            $data=$m->where($map)->order('utime desc')
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->select();
        }else {
            $data=$m->where(array('state'=>'发布'))->order('utime desc')
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->select();
        }
        $this->assign('data',$data);
        $this->assign('cate',$_GET['cate']);                  
        $this->display();
    }
    
    
    
    
    
    
}