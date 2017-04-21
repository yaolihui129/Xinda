<?php
namespace Anshun\Controller;
class OrderController extends WebInfoController {     
    public function index(){        
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息       
        $this->display();
    }  
    public function search(){//检索车辆信息
        /* 接收参数*/
        $search = !empty($_POST['search']) ? $_POST['search'] : $_GET['search'];        
        $this->assign('search',$search);
        /* 实例化模型*/
        $map['plateno|vim']=$search;
        $arr=M('car')->where($map)->select();
        $this->assign('arr',$arr);   
        $this->display();        
    }    
    public function yuyue(){//预约
        $yydate=date("Y-m-d",time()+1*24*3600);
        $this->assign("yydate", $yydate);
        $this->assign("textservice", selectCate());       
        $this->display();
    }
    
    public function yyinsert(){              
        if($_POST['phone']){//关联客户信息，客户信息不存在创建客户
           $m=M('tp_customer');
           $where=array("phone"=>$_POST['phone']);
           $arr=$m->where($where)->find();
           if($arr){
               $_POST['uid']=$arr['id'];
           }else {
               $data['phone']=$_POST['phone'];
               $data['password']=md5(123456);
               $data['ctime']=time();
               $data['moder']='维修预约';
               if(!$m->create($data)){
                   $this->error($m->getError());
               }
               $lastId=$m->add($data);
               $arr=$m->where($where)->select();
               $_POST['uid']=$arr['id'];
           }
       }else {
           $this->error('联系电话没有填写');
       }
       if($_POST['plateno']){//处理车辆信息    
           $m=M('car');
           $where=array("plateno"=>$_POST['plateno']);
           $arr=$m->where($where)->find();
           if($arr){
               $_POST['carid']=$arr['id'];
           }else {
               $data['plateno']=$_POST['plateno'];               
               $data['ctime']=time();
               $data['moder']='维修预约';
               if(!$m->create($data)){
                   $this->error($m->getError());
               }
               $lastId=$m->add($data);
               $arr=$m->where($where)->select();
               $_POST['carid']=$arr['id'];
           }
       }
           
           /* 实例化模型*/
           $m=D('order_serviccar');          
           $_POST['adder']=$_SESSION['realname'];
           $_POST['moder']=$_SESSION['realname'];
           $_POST['sdate']=date("Y-m-d",time());
           $_POST['ctime']=date("Y-m-d H:i:s",time());
           if(!$m->create()){
               $this->error($m->getError());
           }
           $lastId=$m->add();
           if($lastId){
               $this->success("预约成功",U('Index/index'));
           }else{
               $this->error('失败');
           }
    }

    public function receive(){//收车
        $arr=M('car')->find($_GET['id']);
        $this->assign('arr',$arr);
        $this->assign("textservice", selectCate());        
        $this->display();
        
    }
    
    public function insert(){
        if($_POST['phone']){
            $m=M('tp_customer');
            $where=array("phone"=>$_POST['phone']);
            $arr=$m->where($where)->select();
            if($arr){
                $_POST['uid']=$arr[0]['id'];
            }else {
                $data['phone']=$_POST['phone'];
                $data['password']=md5(123456);
                $data['ctime']=time();
                $data['moder']='维修预约';
                if(!$m->create($data)){
                    $this->error($m->getError());
                }
                $lastId=$m->add($data);
                $arr=$m->where($where)->select();
                $_POST['uid']=$arr[0]['id'];
            }
                      
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
            if($m->add()){
                $this->success("成功",U('Anshun/Order/servicelist'));
            }else{
                $this->error('失败');
            }              
        }else {
           $this->error('联系电话没有填写');
       }
    }
    
    public function servicelist(){       
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息           
        if($_GET['state']){
            $state=$_GET['state'];
        }else {
            $state='待维修';
        }       
        $this->assign('state',$state);        
        $where=array('state'=>$state);
        $arr=M('order_serviccar')->where($where)->order('ctime desc')->select();
        $this->assign('arr',$arr);
        $this->display();
    }        
    public function imgfront(){    
        $arr=M('order_serviccar')->find($_GET['id']);
        $this->assign('arr',$arr);             
        $this->display();       
    }
    
    public function imgback(){
       $arr=M('order_serviccar')->find($_GET['id']);
        $this->assign('arr',$arr);    
        $this->display();   
    }
    
    public function imgleft(){
        $arr=M('order_serviccar')->find($_GET['id']);
        $this->assign('arr',$arr);    
        $this->display();   
    }
    
    public function imgright(){
       $arr=M('order_serviccar')->find($_GET['id']);
        $this->assign('arr',$arr);   
        $this->display();  
    }
    
    public function imgservice(){
        $arr=M('order_serviccar')->find($_GET['id']);
        $this->assign('arr',$arr);   
        $this->display();   
    }
    
    public function imgoil(){
        $arr=M('order_serviccar')->find($_GET['id']);
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
            if (D('order_serviccar')->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/Anshun'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(600, 400)->save('./Upload/Anshun'.$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
    }
    
    public function weixiu(){//修理
        $arr=array('id'=>$_GET['id'],'state'=>'修理中');
        if (M('order_serviccar')->save($arr)){
            $this->success("开始修理");
        }else{
            $this->error("失败！");
        }
    }
    public function wangong(){//完工
        $arr=array('id'=>$_GET['id'],'state'=>'已完工');
        if (M('order_serviccar')->save($arr)){
            $this->success("已完工");
        }else{
            $this->error("失败！");
        }
    }

    public function jiaoche(){//交车
        $arr=array('id'=>$_GET['id'],'state'=>'已交车');
        if (M('order_serviccar')->save($arr)){
            $this->success("已交车");
        }else{
            $this->error("失败！");
        }
    }
    public function quxiao(){//取消
        $arr=array('id'=>$_GET['id'],'state'=>'已取消');
        if (M('order_serviccar')->save($arr)){
            $this->success("已取消");
        }else{
            $this->error("失败！");
        }
    }
}