<?php
namespace Tuocai\Controller;
class IndexController extends WebInfoController {
    public function index(){
         $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        wxLogin(C('PRODUCT',C('DBQZ'),$appid,$openid));//微信公众号免登陆
        $where=array('prodid'=>C('PRODID'));
        $pic=D('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic); 
        
        $where=array('prodid'=>C('PRODID'),'istj'=>1,'state'=>5);
        $data=M('tp_product')->where($where)->order('utime desc')->field("productId,name,money,smoney,num,productImg,utime")->select();
        $this->assign('data',$data);
        
//         $map['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
//         $map['state']="发布";
//         $m=M('tp_customer');
//         $arr=$m->where($map)->order('utime desc')->select();
//         $this->assign('arr',$arr);                
        
        $this->display();
    }
    
       
}