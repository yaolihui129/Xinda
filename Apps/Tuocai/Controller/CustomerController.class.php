<?php
namespace Tuocai\Controller;
use Think\Controller;
class CustomerController extends Controller {

	public function index(){
	    $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(2);
        $_SESSION['Tuocai']=$data;
        $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();

        $where['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
        $where['state']="发布";
		$m=M('tc_customer');
        $data=$m->where($where)->order('utime desc')->select();
        $this->assign('data',$data);
        $this->assign('w',$where);       
	    $this->display();
    }
    
    //人员列表
    public function renylist(){
        /* 实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(2);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        /*接收参数*/
        if($_GET['type']){
            $type=$_GET['type'];
        }else {
            $type='学生';
        }
        
        $this->assign('type',$type);
        
        /* 实例化模型*/
        $m=D('tc_customer');
        $where['type']=$type;
        $arr=$m->where($where)->order('ctime desc')->select();
        $this->assign('arr',$arr);
        
        $this->display();
    }
    
    //添加人员
    public function add(){
        
        $this->display();
    }
    //个人注册
    public function tianj(){
       
        //1.判断手机号是否填写                   
        if($_POST['phone']){           
            //2.检查登录表时候有该手机
            $where['phone']=$_POST['phone'];
            $m=D('tp_customer');            
            $arr=$m->where($where)->select();
            if($arr){
                //3.检查客户表是否有该手机
                $m=D('tc_customer');
                $map['tpid']=$arr[0]['id'];
                $data=$m->where($map)->select();
                if($data){
                    //如果客户表存在
                }else {
                    //如果客户表不存在，创建该客户
                    
                }
                
            }else {
                //登录表没有，直接创建
                $_POST['password']=md5(123456);
                $_POST['ctime']=time();
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $lastId=$m->add();
                $arr=$m->where($where)->select();
                //客户表，插入记录
            }
            
            
            
            
            
        }else {
            $this->error("手机号不能为空");
        }
        
        
        /* 实例化模型*/
        
        $m=D('tp_customer');
        
    
    }
    
    
    
   
 public function setpass(){
        /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('tc_customer');        
        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }
    
    
    //检查手机号是否注册过
    public function checked(){
        if($_POST['phone']){
            $m=D('tp_customer');
            $where['phone']=$_POST['phone'];
            $data=$m->where($where)->select();
            if($data){
                $this->error("这个号码已经注册，无需重复注册");
            }else{
                $this->redirect('/Tuocai/Customer/register/phone/'.$_POST['phone']);
            }
        }else{
            $this->error("您没有填写手机号");
        }
    
    
    }
    //个人注册
    public function register(){
    
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(1);
        $_SESSION['Xiuli']=$data;
        $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    
        $phone=$_GET['phone'];
        $this->assign('phone',$phone);
    
        $this->display();
    }
    //个人注册
    public function insert(){
        $m=D('tp_customer');
        $_POST['password']=md5(123456);
        $_POST['ctime']=time();
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("注册成功");
        }else{
            $this->error("注册失败");
        }
    
    }
     
    

 public function set(){
       /* 接收参数*/
       $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
       $pass1= $_POST['pass1'];
       $pass2= $_POST['pass2'];
       $pass3= $_POST['pass3'];
       /* 实例化模型*/
        $m=M('tc_customer');
        
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


 public function mod(){
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=M('tp_customer');
        $arr=$m->find($id);
        $this->assign('arr',$arr);
        
        $this->display();
    }
    
    public function update(){
        /* 实例化模型*/
        $db=D('tp_customer');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function personal(){
        /* 接收参数*/
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
 


