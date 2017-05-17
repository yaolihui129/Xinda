<?php
namespace Anshun\Controller;
use Think\Controller;
class WebInfoController extends Controller {  
    function _empty(){//空方法
        $this->display('index');
    }
    
    function web(){
        import('Org.Net.IpLocation');// 导入IpLocation类
        $Ip = new IpLocation('UTFWry.dat'); // 实例化类 参数表示IP地址库文件
        $_SESSION['area'] = $Ip->getlocation(get_client_ip()); // 获取某个IP地址所在的位置
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