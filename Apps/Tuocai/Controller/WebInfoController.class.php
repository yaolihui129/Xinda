<?php
namespace Tuocai\Controller;
use Think\Controller;
class WebInfoController extends Controller {        
    public function _empty(){//错诶网页重新定向到首页
        $this->redirect(C(PRODUCT).'/Index');
    } 
    
function weiXinLogin($appid,$openid){//微信公众账号免登陆
       $map=array('wxopenid'=>$openid,'prodid'=>C(PRODID));
       $m=D('tp_customer');
       $arr=$m->where($map)->find();
            if($arr){//如果用户表有值，直接登录
                $_SESSION['userid']   = $arr['id'];
                $_SESSION['isCLogin'] = C(PRODUCT);
                $_POST['id']=$arr['id'];
                $_POST['lastLoginTime']=date("Y-m-d H:i:s",time());
                $_POST['lastLoginIP']=get_client_ip();
                $m->save($_POST);//更新最后登录信息
                if($arr['creditid']){       
                    $_SESSION['realname'] = getCreditName($arr['creditid']);
                }else{//如果未绑定手机号
                    $_SESSION['realname'] = '绑定手机';
                }
            }else{//如果用户表没有值，向用户表插入数据
                $_POST['wxopenid']=$openid;
                $_POST['wxappid']=$appid;
                $_POST['prodid']=C(PRODID);
                $_POST['adder']='微信免登';
                $_POST['moder']='微信免登';
                $_POST['ctime']=time();
                $_POST['lastLoginTime']=date("Y-m-d H:i:s",time());
                $_POST['lastLoginIP']=get_client_ip();
                $m->create();              
                $_SESSION['userid']   = $m->add();
                $_SESSION['isCLogin'] = C(PRODUCT);
                $_SESSION['realname'] = '绑定手机';
            }  
    }

}