<?php
namespace Mtsh\Controller;
use Think\Controller;
class WebInfoController extends Controller {        
    public function _empty(){//错诶网页重新定向到首页
        $this->redirect(C(PRODUCT).'/Index');
    }       
//     public static function weiXinLogin($appid,$openid){//微信公众账号免登陆
//         if($openid){//如果有$_GET['wxOpenId']就直接登录
//             $map=array('wxopenid'=>$openid);
//             $m=D('xd_customer');
//             $arr=$m->where($map)->select();
//             if($arr){//如果用户表有值，直接登录
//                 $_SESSION['userid']   = $arr[0]['tpid'];
//                 $_SESSION['isCLogin'] = 'Xinda';
//                 if($arr[0]['tpid']==0){//如果绑定手机号
//                     $_SESSION['realname'] = '未留手机';
//                 }else{//如果未绑定手机号
//                     $_SESSION['uphone']   = getCusPhone($arr[0]['tpid']);
//                     $_SESSION['realname'] = getCusName($arr[0]['tpid']);
//                 }
//             }else{//如果用户表没有值，向用户表插入数据
//                 $_POST['wxopenid']=$_GET['wxOpenId'];
//                 $_POST['wxappid']=$appid;
//                 $_POST['adder']=$appid;
//                 $_POST['moder']=$appid;
//                 $_POST['ctime']=time();
//                 $m->create();              
//                 $m->add();
//                 $arr=$m->where($map)->select();
//                 $_SESSION['userid']   = $arr[0]['tpid'];
//                 $_SESSION['isCLogin'] = 'Xinda';
//                 $_SESSION['realname'] = '未留手机';
//             }        
//         }        
//     }
}