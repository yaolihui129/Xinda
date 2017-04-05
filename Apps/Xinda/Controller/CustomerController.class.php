<?php
namespace Xinda\Controller;
use Think\Controller;
class CustomerController extends Controller {

	public function index(){
	    /* 实例化模型*/
	    $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(6);
        $_SESSION['Xinda']=$data;
        $_SESSION['Xinda']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
             
	    $this->display();
    }
    
    public function checked(){
        if($_POST['phone']){
            $m=D('tp_customer');
            $where['phone']=$_POST['phone'];
            $data=$m->where($where)->select();
            if($data){
                $this->error("这个号码已经注册，无需重复注册");
            }else{
                $this->redirect('/Xinda/Customer/register/phone/'.$_POST['phone']);
            }
        }else{
            $this->error("您没有填写手机号");
        }
        
    }
    
    public function register(){
    
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(1);
        $_SESSION['Xinda']=$data;
        $_SESSION['Xinda']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    
        $phone=$_GET['phone'];
        $this->assign('phone',$phone);
    
        $this->display();
    }
    

    public function insert(){
        $m=D('tp_customer');
        $_POST['password']=md5(123456);
        $_POST['ctime']=time();
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("注册成功",U('Xinda/Index'));
        }else{
            $this->error("注册失败");
        }
    
    }

    public function mod(){
        /* 接收参数*/
        $id =  $_SESSION['userid'];
        /* 实例化模型*/
        $m=M('tp_customer');
        $arr=$m->find($id);
        $this->assign('arr',$arr);
    
        $this->display();
    }
   
 public function setpass(){
        /* 接收参数*/
        $id =  $_SESSION['userid'];
        /* 实例化模型*/
        $m=M('tp_customer');        
        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }

 public function set(){
       /* 接收参数*/
       $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
       $pass1= $_POST['pass1'];
       $pass2= $_POST['pass2'];
       $pass3= $_POST['pass3'];
       /* 实例化模型*/
        $m=M('tp_customer');
        
        $user=$m->find($id);
        if (md5($pass1)==$user['password']) {
            if ($pass2==$pass3) {
                $arr['id']=$id;
                $arr['password']=md5($pass2);
                $arr['moder']=$_SESSION['realname'];
                if ($m->save($arr)){
                   $this->success("密码修改成功！",U('Tuocai/Index/index'));
                }else{
                   $this->error("密码修改失败！");
                }

            }else{
                $this->error('新密码和确认面不一致');
            }
        }else{
            $this->error('原密码错误');
        }
 }


public function personal(){
       /* 接收参数*/
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        //如果有$_GET['wxOpenId']就直接登录
        if($openid){
            $map=array('wxopenid'=>$openid);
            $m=D('xd_customer');
            $arr=$m->where($map)->select();
            if($arr){//如果用户表有值，直接登录
                $_SESSION['userid']   = $arr[0]['tpid'];
                $_SESSION['isCLogin'] = 'Xinda';
                if($arr[0]['tpid']==0){//如果绑定手机号
                    $_SESSION['realname'] = '未留手机';
                }else{//如果未绑定手机号
                    $_SESSION['uphone']   = getCusPhone($arr[0]['tpid']);
                    $_SESSION['realname'] = getCusName($arr[0]['tpid']);
                }
            }else{//如果用户表没有值，向用户表插入数据
                $_POST['wxopenid']=$_GET['wxOpenId'];
                $_POST['wxappid']=$appid;
                $_POST['adder']=$appid;
                $_POST['moder']=$appid;
                $_POST['ctime']=time();
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $lastId=$m->add();
                $arr=$m->where($map)->select();
                $_SESSION['userid']   = $arr[0]['tpid'];
                $_SESSION['isCLogin'] = 'Xinda';
                $_SESSION['realname'] = '未留手机';
            }
        
        }
        if($_SESSION['openid']){
            $where['openid']=$_SESSION['openid'];
        }else {
            $where['id'] =  $_SESSION['userid'];
        }    
        /* 实例化模型*/
        $m=M('tp_customer');
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);

        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }


}
 


