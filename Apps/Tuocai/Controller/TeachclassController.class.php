<?php
namespace Tuocai\Controller;
use Think\Controller;
class TeachclassController extends Controller {
    public function _empty(){

        $this->display('Tuocai/Index');
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
        $teacherid=$_GET['teacherid'];
        $this->assign('teacherid',$teacherid);
        $m=D('tc_customer');
        $arr=$m->find($teacherid);
        $this->assign('tpid',$arr['tpid']);
        $_SESSION['type']=$arr['type'];
        /* 实例化模型*/
        $m=D('tc_cate');
        $where=array("catname"=>$arr['coursetype']);
        $arr=$m->where($where)->select();
        $pid=$arr[0]['id'];
//     dump($arr);
        //获取分类下的课程
        $m=D('tc_prodservice');
        $map['state']='发布';
        if($pid){
            $map['pid|cate']=$pid;
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
        $teacherid=$_GET['teacherid'];
        $m=D('tc_customer');
        $arr=$m->find($teacherid);
        $this->assign('arr',$arr);
        
        $courseid=$_GET['courseid'];
        $this->assign('courseid',$courseid);
        $m=D('tc_prodservice');
        $data=$m->find($courseid);
        $this->assign('data',$data);
               
        $this->display();
    }
    
    
    public function insert(){
        /* 实例化模型*/
        $m=D('tc_teachclass');
        $_POST['ctime']=time();
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功",U('classlist'));
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
            $map['zt_tc_teachclass.teacherid']=$arr[0]['id'];
            //查询老师的课程表
            $m=D('tc_teachclass');
            $data=$m->where($map)
            ->join('zt_tc_plan ON zt_tc_plan.teachclassid=zt_tc_teachclass.id ')
            ->join('zt_tc_date ON zt_tc_plan.dateid=zt_tc_date.id')
            ->order('zt_tc_date.riqi,zt_tc_date.sn')
            ->select();
    
            $this->assign('data',$data);
        }else {
            //查询学生的课程表
            $m=D('tc_stuclass');
            $map['zt_tc_stuclass.stuid']=$arr[0]['id'];
            $start=date("Y-m-d",time()-7*24*3600);
            $end=date("Y-m-d",time()+7*24*3600);
            //             $map['zt_tc_date.riqi']  = array('between','$start,$end');
            $data=$m->where($map)
            ->join('zt_tc_teachclass ON zt_tc_teachclass.id=zt_tc_stuclass.teachclassid')
            ->join('zt_tc_plan ON zt_tc_plan.teachclassid=zt_tc_teachclass.id ')
            ->join('zt_tc_date ON zt_tc_plan.dateid=zt_tc_date.id')
            ->order('zt_tc_date.riqi,zt_tc_date.sn')
            ->select();
    
            $this->assign('data',$data);
        }
         
        $this->display();
    
    }
    
    
    
    public function classlist(){
        /* 实例化模型*/
        $m=D('tc_teachclass');
        $arr=$m->order('utime desc')->select();
//         dump($arr);
        $this->assign('arr',$arr);
        
        $this->display();
    }
    
    
    
    
}