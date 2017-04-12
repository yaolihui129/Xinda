<?php
namespace Admin\Controller;
class CateController extends CommonController {
    
    public function index(){
        /* 接收参数*/
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        $this->assign('search',$search);
        $maxPageNum=10;
        
        $where['prodid']=$_SESSION['prodid'];
        $where['catname']=array('like','%'.$search.'%');
        if($_GET['ParentBusinessUnitId']){
            $where['pid']=$_GET['pid'];            
        }else{
            $where['pid']=0;
        }
        $this->assign('pid',$_GET['pid']);
        $m=D('tp_cate');
        $data=$m->where($where)->order('sn')->page($page,$maxPageNum)->select();
        $this->assign('data',$data);
        
        
        
        $this->display();
    }
    
    public function add(){
        /*接收参数*/
        $pid=!empty($_GET['pid']) ? $_GET['pid'] : 0; 
        $this->assign("pid",$pid);
        /*实例化模型*/
        $m=D('tp_cate');
//         $where=array('prodid'=>$_SESSION['prodid']);
//         $data=$m->where($where)->order('sn')->select();
//         $this->assign('data',$data);

        $map=array('prodid'=>$_SESSION['prodid'],'pid'=>$pid);
        $count=$m->where($map)->count()+1;
        $this->assign("count",$count);
        
        
        $this->display();
        
    }
    
    public function insert(){
    
        $m=D('tp_cate');
         
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
        $db = D('tp_cate');
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
        $m=D('tp_cate');
        $arr=$m->order('sn')->find($_GET[id]);
        $this->assign('arr',$arr);
               
    
        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_cate')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
      
    
    public function del(){

        $count =D('tp_cate')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }

}