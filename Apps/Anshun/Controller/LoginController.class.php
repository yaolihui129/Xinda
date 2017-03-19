<?php
namespace Anshun\Controller;
use Think\Controller;
class LoginController extends Controller {

    public function qq_login(){

        $qqobj=new \Org\Util\Qqconnect();              
        $qqobj->getAuthCode(); 

    }
    
   
    public function qq_callback(){
               
        $_SESSION['state']=$_GET['state'];
        
        $qqobj=new \Org\Util\Qqconnect();       
        $result=$qqobj->getUsrInfo();
        $cus=json_decode($result,true);
       
        $m=D('tp_customer');
        $where['openid']=$_SESSION['openid'];
        $arr=$m->where($where)->select();
        if ($arr){
            $_SESSION['Anshun']['userid']=$arr['id'];
            $_SESSION['uphone']=$arr['phone'];
            $_SESSION['realname']=$cus['nickname'];
            $_SESSION['isCLogin']='Anshun';
            $_SESSION['QC_userData']=$cus;
            
            $this->redirect('/Anshun/Index');
        }else {
            
            $_POST['openid']=$_SESSION['openid'];
            $_POST['realname']=$cus['nickname'];
            $_POST['password']=md5(7186126);
            $_POST['gender']=$cus['gender'];
            $_POST['province']=$cus['province'];
            $_POST['city']=$cus['city'];
            $_POST['year']=$cus['year'];
            $_POST['figureurl_qq_1']=$cus['figureurl_qq_1'];
            $_POST['figureurl_qq_2']=$cus['figureurl_qq_2'];
            $_POST['moder']='QQ第三方授权';
            $_POST['ctime']=time();
            if(!$m->create()){
                $this->error($m->getError());
            }
            $lastId=$m->add();
                        
            $arr=$m->where($where)->select();
            $_SESSION['Anshun']['userid']=$arr['id'];
            $_SESSION['uphone']=$arr['phone'];
            $_SESSION['realname']=$cus['nickname'];
            $_SESSION['isCLogin']='Anshun';
            $_SESSION['QC_userData']=$cus;
            
            $this->redirect('/Anshun/Index');
            
        }
        
    }
       
    public function login(){
         $m= D('tp_customer');
         $where['phone']=$_POST['phone'];
         $where['password']=md5($_POST['password']);
         $data=$m->where($where)->field('id,phone,realname')->find();
        
        if ($data){            
            $_SESSION['userid']=$data['id'];
            $_SESSION['uphone']=$data['phone'];
            $_SESSION['realname']=$data['realname'];
            $_SESSION['isCLogin']='Anshun';
//             $this->redirect('/Anshun/Index');
            $this->success("登录成功!");
        }else{

            $this->error('用户或密码错误，请重新登陆！');
        }

    }

    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }        
        session_destroy();// 销毁sesstion

        $this->success("再见 {$username}, 退出成功!",U('/Anshun/Index'));

    }
}