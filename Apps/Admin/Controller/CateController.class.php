<?php
namespace Admin\Controller;
class CateController extends CommonController {
    
    public function index(){
        $where['prodid']=$_SESSION['prodid'];
        $where['pid']=!empty($_GET['pid']) ? $_GET['pid'] : 0;
        $m=D($_SESSION['db'].'cate');
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        
        $arr=$m->find($_GET['pid']);
        $this->assign('arr',$arr);
        
        $this->display();
    }
    
    public function add(){
        /*接收参数*/
        $pid=!empty($_GET['pid']) ? $_GET['pid'] : 0;      
        /*实例化模型*/
        $m=D($_SESSION['db'].'cate');
        $where['prodid']=$_SESSION['prodid'];        
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
//         dump($data);
        $where['pid']=$pid;
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this->assign("pid",$pid);
        
        $this->display();
        
    }
    
    public function insert(){
    
        $m=D($_SESSION['db'].'cate');
         
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
    
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }
    
    public function order(){
        /* 实例化模型*/
        $db = D($_SESSION['db'].'cate');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
    
        }else{
            $this->error("排序失败...");
        }
    }
    
    public function mod(){
        $m=D($_SESSION['db'].'cate');
        $arr=$m->order('sn')->find($_GET[id]);
        $this->assign('arr',$arr);
        
        $where['prodid']=$_SESSION['prodid'];
        $data=$m->where($where)->select();
        $this->assign('data',$data);       
    
        $this->display();
    }
    
    
    public function update(){
        /* 实例化模型*/
        $db=D($_SESSION['db'].'cate');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function img(){
        $m=D('tp_ad');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
    
        $this->display();
    }
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D($_SESSION['db'].'cate');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }

}