<?php
namespace Admin\Controller;
class TeacherclassController extends CommonController {
    public function index(){
       
       $m=D('tc_course');
       $arr=$m->find($_GET['id']);
       $this->assign('arr',$arr);
       
       $m=D('tc_techclass');
       $where['courseid']=$_GET['id'];
       $arr=$m->where($where)->select();
       $this->assign('data',$arr);

        $this->display();
    }
    
   
    
    public function addteacher(){
       
        $m=D('tc_course');
        $arr=$m->find($_GET['courseid']);
        $this->assign('arr',$arr);

        $m=D('tc_customer');
        $where['coursetype']=$arr['coursetype'];
        $where['isteacher']=1;
        $where['state']="正常";
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        
        $this->display();
        
    }
    
    
    public function insert(){
        $where[phone]=$_POST['phone'];
        $where['isteacher']=1;
        $where['state']="正常";
        $m=D('tc_customer');
        $arr=$m->where($where)->find();       
        if ($arr){         
            $_POST['teacherid']=$arr['id'];
            $_POST['teacher']=$arr['realname'];
            $_POST['phone']=$arr['phone'];
            $_POST['coursetype']=$arr['coursetype'];
            /* 实例化模型*/
            $m=D('tc_techclass');
            $_POST['adder']=$_SESSION['realname'];
            $_POST['moder']=$_SESSION['realname'];
            $_POST['createTime']=time();           
            if(!$m->create()){
                  $this->error($m->getError());
             }
                $lastId=$m->add();
                if($lastId){
                    $this->success("添加成功");
                }else{
                  $this->error("添加失败");
             }          
        }else{
            $this->error("无此老师信息，请核对手机号");
        } 
    }
    
    
    
    public function info(){
        $id=$_GET['id'];
        
        $m=D('tc_customer');
        $arr=$m
        ->join('tp_tc_techclass ON tp_tc_customer.id = tp_tc_techclass.teacherid')
        ->field('tp_tc_techclass.id,tp_tc_techclass.courseid,tp_tc_techclass.teacherid')
        ->select();
    
        $this->display();
    }
    
    public function modteacher(){
         
        $m=D('tc_techclass');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);

        $m=D('tc_customer');
        $where['coursetype']=$arr['coursetype'];
        $where['isteacher']=1;
        $where['state']="正常";
        $data=$m->where($where)->select();
        $this->assign('data',$data);
    
        $this->display();
    
    }
    
    public function update(){
        $where[phone]=$_POST['phone'];
        $where['isteacher']=1;
        $where['state']="正常";
        $m=D('tc_customer');
        $arr=$m->where($where)->find();
        if ($arr){
            $_POST['teacherid']=$arr['id'];
            $_POST['teacher']=$arr['realname'];
            $_POST['phone']=$arr['phone'];
            $_POST['coursetype']=$arr['coursetype'];
            /* 实例化模型*/
            $m=D('techclass');           
            $_POST['moder']=$_SESSION['realname'];
           
            if ($m->save($_POST)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
        }else{
            $this->error("无此老师信息，请核对手机号");
        }
    }
    
    
    
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tc_techclass');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}