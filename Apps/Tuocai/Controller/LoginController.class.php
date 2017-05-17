<?php
namespace Tuocai\Controller;
use Think\Controller;
class LoginController extends Controller {
    private static $data;
    private $app_id='101388431';
    private $app_key="768d78094c5a2f4e9df3fe7f108c877e";
    private $callBackUrl="http://www.zhihuixinda.com/index.php/Xinda/Login/qq_callback";//回调地址
    private $callBackUrlTest="http://localhost/Xinda/index.php/Xinda/Login/qq_callback";//回调地址
    private $code="";
    private $accessToken="";
    public function qq_login(){
        $url="https://graph.qq.com/oauth2.0/authorize";
        $state = md5(uniqid(rand(), TRUE)); //-------生成唯一随机串防CSRF攻击
        $_SESSION['state']=$state;
        if(ONLINE){
            $param=array(
                'response_type'=>"code",
                'client_id'=>$this->app_id,
                'redirect_uri'=>$this->callBackUrl,
                'state'=>$state,
                'scope'=>"get_user_info",
            );
        }else {
            $param=array(
                'response_type'=>"code",
                'client_id'=>$this->app_id,
                'redirect_uri'=>$this->callBackUrlTest,
                'state'=>$state,
                'scope'=>"get_user_info",
            );
        }
        $param =http_build_query($param,'','&');
        $url=$url."?".$param;
        header("Location:".$url);
    }
    public function qq_callback(){
        $_SESSION['state']=$_GET['state'];
        $result=$this->getUsrInfo();
        $cus=json_decode($result,true);
        $m=D('tp_customer');
        $where=array('openid'=>$_SESSION['openid']);
        $arr=$m->where($where)->select();
        if ($arr){
            $_SESSION['userid']=$arr['id'];
            $_SESSION['uphone']=$arr['phone'];
            $_SESSION['realname']=$arr['nickname'];
            $_SESSION['isCLogin']=C('PRODUCT');
            $_SESSION['QC_userData']=$cus;
            $this->redirect(C('PRODUCT').'/Index');
        }else {
            $_POST['openid']=$_SESSION['openid'];
            $_POST['realname']=$cus['nickname'];
            $_POST['password']=md5(123456);
            $_POST['gender']=$cus['gender'];
            $_POST['province']=$cus['province'];
            $_POST['city']=$cus['city'];
            $_POST['year']=$cus['year'];
            $_POST['figureurl_qq_1']=$cus['figureurl_qq_1'];
            $_POST['figureurl_qq_2']=$cus['figureurl_qq_2'];
            $_POST['moder']='QQ第三方授权';
            $_POST['ctime']=time();
            $m->create();
            $m->add();
            $arr=$m->where($where)->select();
            $_SESSION['userid']=$arr['id'];
            $_SESSION['uphone']=$arr['phone'];
            $_SESSION['realname']=$cus['nickname'];
            $_SESSION['isCLogin']=C('PRODUCT');
            $_SESSION['QC_userData']=$cus;
            $this->redirect(C('PRODUCT').'/Index');
        }
    }
    private function getAccessToken(){//获取AccessToken
        $url="https://graph.qq.com/oauth2.0/token";
        $param=array(
            'grant_type'=>"authorization_code",
            'client_id'=>$this->app_id,
            'client_secret'=>$this->app_key,
            'code'=>$this->code,
            'redirect_uri'=>$this->callBackUrl,
        );
        $param =http_build_query($param,'','&');
        $url=$url."?".$param;
        return httpGet($url);
    }
    public function getOpenID(){//获取openid
        $rzt=$this->getAccessToken();
        parse_str($rzt,$data);
        $this->accessToken=$data['access_token'];
        $url="https://graph.qq.com/oauth2.0/me";
        $param=array('access_token'=>$this->accessToken);
        $param =http_build_query($param,'','&');
        $url=$url."?".$param;
        $response=httpGet($url);
        if(strpos($response, "callback") !== false){//--------检测错误是否发生
            $lpos = strpos($response, "(");
            $rpos = strrpos($response, ")");
            $response = substr($response, $lpos + 1, $rpos - $lpos -1);
        }
        $user = json_decode($response);
        if(isset($user->error)){
            exit("错误代码：100007");
        }
        return $user->openid;
    }
    
    
    public function getUsrInfo(){//获取信息
        if($_GET['state'] != $_SESSION['state']){
            exit("错误代码：300001");
        }
        $this->code=$_GET['code'];
        $openid=$this->getOpenID();
        $_SESSION['openid']=$openid;
        if(empty($openid)){
            return false;
        }
        $url="https://graph.qq.com/user/get_user_info";
        $param=array('access_token'=>$this->accessToken,'oauth_consumer_key'=>$this->app_id,'openid'=>$openid);
        $param =http_build_query($param,'','&');
        $url=$url."?".$param;
        $rzt=httpGet($url);
        return $rzt;
    }
     
    public function login(){
        if (login( $_POST['phone'], $_POST['password'])){
            $this->success("登录成功!");
        }else{
            $this->error('用户或密码错误，请重新登陆！');
        }
    }
    
    public function logout(){
        logout();
        $this->success("退出成功!",U(C('PRODUCT').'/Index'));
    
    }
}