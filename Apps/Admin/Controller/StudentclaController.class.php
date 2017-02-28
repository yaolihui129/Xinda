<?php
namespace Admin\Controller;
class StudentclaController extends CommonController {
    
    public function index(){
        $techclassid=$_GET['techclassid'];
        $m=M('tc_studentcla');
        $where['techclassid']=$techclassid;
        $data=$m->where($where)->order('updateTime desc')->select();
        $this->assign('data',$data);
        $arr['techclassid']=$techclassid;
        $this->assign('arr',$arr);
        
        $this->display();
        
        
    }
    
    public function add(){
        $techclassid=$_GET['techclassid'];
        $m=D('tc_techclass');
        $arr=$m->find($_GET['techclassid']);
        $this->assign('arr',$arr);
        $m=D('tc_customer');
        $where['coursetype']=$arr['coursetype'];
        $where['isteacher']=0;
        $where['state']="正常";
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        
        
        $this->display();
        
    }
    
    public function insert(){
        $where[phone]=$_POST['sphone'];
        $where['isteacher']=0;
        $where['state']="正常";
        
        $m=D('tc_customer');
        $arr=$m->where($where)->find();
        $_POST['studentid']=$arr['id'];
        $_POST['student']=$arr['realname'];
        $_POST['coursetype']=$arr['coursetype'];
        
        /* 实例化模型*/
        $m=D('tc_studentcla');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=time();
        if ($arr){
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
            $this->error("无此学生信息，请核对手机号");
        }
        
    
    }
    
    public function mod(){
        
        $m=D('studentcla');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
        
        $m=D('tc_customer');
        $where['coursetype']=$arr['coursetype'];
        $where['isteacher']=0;
        $where['state']="正常";
        $data=$m->where($where)->select();
        $this->assign('data',$data);
               
        $this->display();
    
    }
    
    public function update(){
        $where[phone]=$_POST['sphone'];
        $where['isteacher']=0;
        $where['state']="正常";
        /* 实例化模型*/
        $m=D('tc_customer');
        $arr=$m->where($where)->find();
        if ($arr){
            $_POST['studentid']=$arr['id'];
            $_POST['student']=$arr['realname'];
            $_POST['moder']=$_SESSION['realname'];
            /* 实例化模型*/
            $m=D('studentcla');
            if ($m->save($_POST)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
            
        }else{
            $this->error("无此学生信息，请核对手机号");
        }
        
       
        $db=D('tc_studentcla');
        $_POST['moder']=$_SESSION['realname'];
//         if ($db->save($_POST)){
//             $this->success("修改成功！");
//         }else{
//             $this->error("修改失败！");
//         }
    
    }
    
    public function del(){
        
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tc_studentcla');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }
    
    
}