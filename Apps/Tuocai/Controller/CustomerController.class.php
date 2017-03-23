<?php
namespace Tuocai\Controller;
use Think\Controller;
class CustomerController extends Controller {
             //空方法容错处理
            public function _empty(){           
                $this->display('/Tuocai/Index');
            }
  
         //前端师资力量展示
    	public function index(){
    	    /* 实例化模型*/
    	    $m=D('product');
            $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(2);
            $_SESSION['Tuocai']=$data;
            $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
            $_SESSION['ip']=get_client_ip();
            $_SESSION['browser']=GetBrowser();
            $_SESSION['os']=GetOs();
            /*接收参数*/
            $where['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
            $where['state']="发布";
            /* 实例化模型*/
    		$m=M('tc_customer');
            $data=$m->where($where)->order('utime desc')->select();
            $this->assign('data',$data);
            $this->assign('w',$where);
            
    	    $this->display();
        }
    
        //课程列表（根据老师选课程）
        public function teacher(){
            /* 实例化模型*/
            $m=D('product');
            $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(2);
            $_SESSION['Tuocai']=$data;
            $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
            $_SESSION['ip']=get_client_ip();
            $_SESSION['browser']=GetBrowser();
            $_SESSION['os']=GetOs();           
            /* 实例化模型*/
            $m=D('tc_customer');
            $where['isteacher']=1;
            $arr=$m->where($where)->order('ctime desc')->select();
            $this->assign('arr',$arr);

            $this->display();       
        }
    
    
        //人员列表
        public function renylist(){
            /* 实例化模型*/
            $m=D('product');
            $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(2);
            $_SESSION['Tuocai']=$data;
            $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
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
    
        //客户信息编辑
        public function cusmod(){       
            /* 实例化模型*/
            $m=D('tc_customer');        
            $arr=$m->find($_GET['id']);
            $this->assign('arr',$arr);
            $this->assign("selectCate", selectCate($arr['coursetype']));
            $this->assign("selectType",formselect($arr['type'],"state","tcType"));       
            
            $this->display();
        }
    
        //添加人员
        public function add(){
           
            $this->assign("type",  $_GET['type']);
            $this->assign("selectCate", selectCate());
            $this->assign("selectType",formselect("学生","state","tcType"));
            
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
                        $this->error("客户已经存在");
                    }else {
                        //如果客户表不存在，创建该客户                    
                        $m=D('tc_customer');
                        $data['tpid']       =  $arr[0]['id'];
                        $data['type']       =  $_POST['type'];
                        if($_POST['type']=="学生"){
                            $data['isteacher']=0;
                        }else {
                            $data['isteacher']=1;
                        }
                        $data['realname']   =  $_POST['realname'];
                        $data['coursetype'] =  $_POST['coursetype'];
                        $data['course']     =  $_POST['course'];
                        $data['ctime']      =  time();
                        $data['adder']      =  $_SESSION['realname'];
                        $data['moder']      =  $_SESSION['realname'];
                        if(!$m->create($data)){
                            $this->error($m->getError());
                        }
                        $lastId=$m->add($data);
                        if($lastId){
                            $this->success('添加成功',U('Customer/renylist'));
                        }else {
                            $this->error("添加失败");
                        }
                    }
                    
                }else {
                    //登录表没有，直接创建
                    $arr['phone']      =  $_POST['phone'];
                    $arr['realname']   =  $_POST['realname'];
                    $arr['password']   =  md5(123456);
                    $arr['ctime']      =  time();
                    $arr['moder']      =  $_SESSION['realname'];
                    if(!$m->create($arr)){
                        $this->error($m->getError());
                    }
                    $lastId=$m->add($arr);
                    $arr=$m->where($where)->select();
                    
                    
                    //客户表，插入记录
                    $m=D('tc_customer');
                    $data['tpid']       =  $arr[0]['id'];
                    $data['type']       =  $_POST['type'];
                    if($_POST['type']=="学生"){
                        $data['isteacher']=0;
                    }else {
                        $data['isteacher']=1;
                    }
                    $data['coursetype'] =  $_POST['coursetype'];
                    $data['course']     =  $_POST['course'];
                    $data['ctime']      =  time();
                    $data['adder']      =  $_SESSION['realname'];
                    $data['moder']      =  $_SESSION['realname'];
                    $data['remark']     =  $_POST['remark'];
                    if(!$m->create($data)){
                        $this->error($m->getError());
                    }
                    $lastId=$m->add($data);
                    
                    if($lastId){
                        $this->success('添加成功',U('Customer/renylist'));
                    }else {
                        $this->error("添加失败");
                    }
                }
            }else {
                $this->error("手机号不能为空");
            }
    
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
    
    
    //检查手机号是否注册过
    public function checked(){
        if($_POST['phone']){
            /* 实例化模型*/
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
        /* 实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(1);
        $_SESSION['Tuocai']=$data;
        $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    
        $phone=$_GET['phone'];
        $this->assign('phone',$phone);
    
        $this->display();
    }
    //个人注册的插入
    public function insert(){
       
        
        /* 实例化模型*/
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
            //判定原密码是否正确
            if (md5($pass1)==$user['password']) {
                //判定两次新密码是否一致
                if ($pass2==$pass3) {
                    $arr['id']=$id;
                    $arr['password']=md5($pass2);
                    $arr['moder']=$_SESSION['realname'];
                    if ($m->save($arr)){
                       $this->success("密码修改成功！请用新密码重新登录",U('Tuocai/Index/index'));
                       session_destroy();// 销毁sesstion
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
            /* 接收参数*/
            $id =  $_SESSION['userid'];   
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
    
    public function cusupdate(){
        // 实例化上传类
        $upload = new \Think\Upload();
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/Tuocai/';// 设置附件上传目录
        $upload->savePath = '/Customer/'; // 设置附件上传目录       
        $info  =   $upload->upload();
        /* 实例化模型*/
        $db=D('tc_customer');
        $_POST['moder']=$_SESSION['realname'];
        //判定是否有图片上传
        if(!$info) {
            // 没有图片上传时,保存信息             
            $message=$db->save($_POST);
        }else{
            // 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            // 没有图片上传时,保存信息
            $message=$db->save($_POST);
            $image = new \Think\Image();
            //打开图片资源
            $image->open('./Upload/Tuocai'.$info['img']['savepath'].$info['img']['savename']);
            //等比例缩放
            $image->thumb(600, 400)->save('./Upload/Tuocai'.$info['img']['savepath'].$info['img']['savename']);   
        }
        //传递保存信息
        if ($message){
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
    
    
   
}
 


