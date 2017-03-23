<?php
namespace Tuocai\Controller;
use Think\Controller;
class CourseController extends Controller {
    public function _empty(){
    
        $this->display('index');
    }
    
    //课程列表（根据课程选老师）
    public function index(){
        /* 实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(2);
        $_SESSION['Tuocai']=$data;
        $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        //获取分类
        $where['prodid']=2;
        $where['state']='正常';
        $m=D('tc_cate');
        $arr=$m->where($where)->order('sn')->select();
        $this->assign('arr',$arr);
        
        //获取老师数据
        $_SESSION['teacherid']=$_GET['teacherid'];
        /* 实例化模型*/
        $m=D('tc_customer');
        $arr=$m->find($_GET['teacherid']);
        $this->assign('tpid',$arr['tpid']);
        $_SESSION['type']=$arr['type'];
//         dump($_SESSION);
        /* 实例化模型*/
        $m=D('tc_cate');
        $where=array("catname"=>$arr['coursetype']);
        $arr=$m->where($where)->select();
        $_SESSION['pid']=$arr[0]['id'];

        //获取分类下的课程
        $m=D('tc_prodservice');
        $map['state']='发布';
        if($_SESSION['pid']){
            $map['pid|cate']=$_SESSION['pid'];
            $data=$m->where($map)
            ->field("id,name,state,cate,pid,path,img,utime")
            ->order('utime desc')->select();
        }else {
            $map['pid|cate']=1;
            $data=$m->where($map)->field("id,name,state,cate,pid,path,img,utime")
            ->order('utime desc')->limit(12)->select();
        }

        $this->assign('data',$data);

        $this->display();
        
    }
    
    
    public function add(){
        
        $this->assign('courseid',$_GET['courseid']);
        $this->display();
    }
    
    
    public function insert(){
        /* 实例化模型*/
        $m=D('tc_techclass');       
        $_POST['ctime']=time();
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error("失败");
        }
    
    }
    
    
    public function mycourse(){
        /* 实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(2);
        $_SESSION['Tuocai']=$data;
        $_SESSION['Tuocai']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();       
        
        /* 接收参数*/
        $where['tpid'] =  $_SESSION['userid'];
        $this->assign('userid',$_SESSION['userid']);
        $m=D('tc_customer');
        $arr=$m->where($where)->select();
        
        if ($arr[0]['isteacher']==1){
            $map['zt_tc_techclass.cusid']=$arr[0]['id'];
            //查询老师的课程表
            $m=D('tc_techclass');            
            $data=$m->where($map)
            ->join('zt_tc_plan ON zt_tc_plan.techclassid=zt_tc_techclass.id ')
            ->join('zt_tc_date ON zt_tc_plan.dateid=zt_tc_date.id')
            ->order('zt_tc_date.riqi,zt_tc_date.sn')
            ->select();
            
            $this->assign('data',$data);
        }else {
            //查询学生的课程表
            $m=D('tc_stuclass');
            $map['zt_tc_stuclass.cusid']=$arr[0]['id'];
            $start=date("Y-m-d",time()-7*24*3600);
            $end=date("Y-m-d",time()+7*24*3600);
//             $map['zt_tc_date.riqi']  = array('between','$start,$end');
            $data=$m->where($map)
            ->join('zt_tc_techclass ON zt_tc_techclass.id=zt_tc_stuclass.techclassid')
            ->join('zt_tc_plan ON zt_tc_plan.techclassid=zt_tc_techclass.id ')
            ->join('zt_tc_date ON zt_tc_plan.dateid=zt_tc_date.id')
            ->order('zt_tc_date.riqi,zt_tc_date.sn')
            ->select();
            
            $this->assign('data',$data);
        }
     
        $this->display();

    }
    

    
   
  
  



}