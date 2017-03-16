<?php
namespace Anshun\Controller;
use Think\Controller;
class OrderController extends Controller {
    
    public function index(){
        $m=D('product');
        $data=$m->field('web,adress,keywords,desc,phone,tel,qq,url,record,path,img')->find(4);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();      

        $this->display();
    }
  //检索车辆信息
    public function search(){
        /* 接收参数*/
        $search = !empty($_POST['search']) ? $_POST['search'] : $_GET['search'];        
        $this->assign('search',$search);
        /* 实例化模型*/
        $m=D('car');
        $map['plateno|vim']=$search;
        $arr=$m->where($map)->select();
        $this->assign('arr',$arr);
    
        $this->display();
         
    } 
    
    //收车
    public function receive(){
        /* 实例化模型*/
        $m=D('car');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
        $this->assign("textservice", selectCate());
        
        $this->display();
        
    }
    
    public function insert(){
        /* 实例化模型*/
        $m=D('order_serviccar');
        $carid=$_POST['carid'];
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname']; 
        $_POST['sdate']=date("Y-m-d",time());
        $_POST['ctime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功",U('Anshun/Order/servicelist'));
        }else{
            $this->error('失败');
        }
    }
    
    public function servicelist(){
        /* 实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(4);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        /* 实例化模型*/
        $m=D('order_serviccar');
//         $where['state']='待维修';
        $arr=$m->where($where)->order('ctime desc')->select();
        $this->assign('arr',$arr);

        $this->display();
    }
    

    
    public function imgfront(){
        /* 实例化模型*/
        $m=D('order_serviccar');       
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);       
       
        $this->display();       
    }
    
    public function imgback(){
        /* 实例化模型*/
        $m=D('order_serviccar');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
    
        $this->display();   
    }
    
    public function imgleft(){
        /* 实例化模型*/
        $m=D('order_serviccar');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
    
        $this->display();   
    }
    
    public function imgright(){
        /* 实例化模型*/
        $m=D('order_serviccar');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
    
        $this->display();  
    }
    
    public function imgservice(){
        /* 实例化模型*/
        $m=D('order_serviccar');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
    
        $this->display();   
    }
    
    public function imgoil(){
        /* 实例化模型*/
        $m=D('order_serviccar');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
    
        $this->display();  
    }
    
    
    public function pic(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/Anshun/';// 设置附件上传目录
        $upload->savePath = '/Order/'; // 设置附件上传目录
    
        $info  =   $upload->upload();
    
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path'.$_POST['place']]=$info['img']['savepath'];
            $_POST['img'.$_POST['place']]=$info['img']['savename'];
            /* 实例化模型*/
            $db=D('order_serviccar');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/Anshun'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(600, 400)->save('./Upload/Anshun'.$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
    }
    //修理
    public function weixiu(){
        $arr['id']=$_GET['id'];
        /* 实例化模型*/
        $m=D('order_serviccar');
        $arr['state']='修理中';
        if ($m->save($arr)){
            $this->success("开始修理");
        }else{
            $this->error("失败！");
        }
    }
    
    
    //完工
    public function wangong(){
        $arr['id']=$_GET['id'];
        /* 实例化模型*/        
        $m=D('order_serviccar');
        $arr['state']='已完工';
        if ($m->save($arr)){
            $this->success("已完工");
        }else{
            $this->error("失败！");
        }
    }
    
     // 交付
    public function deliver(){
        /* 实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(4);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        /* 实例化模型*/
        $m=D('order_serviccar');
        $where['state']='已完工';
        $arr=$m->where($where)->order('ctime desc')->select();
        $this->assign('arr',$arr);
        
        $this->display();
        
    }
    
    
    
    
}