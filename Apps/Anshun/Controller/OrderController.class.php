<?php
namespace Anshun\Controller;
use Think\Controller;
class OrderController extends Controller {
    
    public function index(){
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(4);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
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
    /*
     * 检索车辆信息
     */
    public function search(){
        /* 接收参数*/
        $search = !empty($_POST['search']) ? $_POST['search'] : $_GET['search'];        
        $this->assign('search',$search);
        /* 实例化模型*/
        $m=D('car');
        $map['plateno|vim']=$search;
        $arr=$m->where($map)->select();
        $this->assign('arr',$arr);
    
        $this->display('index');
         
    } 
    
    
    
    /*
     * 收车
     */
    public function receive(){
        /* 实例化模型*/
        $m=D('car');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
        
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
        $m=D('order_serviccar');
        $where['state']='待维修';
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);

        $this->display();
    }
    
    public function img(){
        /* 实例化模型*/
        $m=D('order_serviccar');
        $where['carid']=$_GET['carid'];
        $arr=$m->where($where)->order('id desc')->limit(1)->select();
        $this->assign('arr',$arr);       
        
        $this->display();
        
    }
    
    /*
     * 交付
     */
    public function deliver(){
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(4);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        $this->display();
        
    }
    
    
    
    
}