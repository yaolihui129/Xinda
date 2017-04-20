<?php
namespace Admin\Controller;
class LinkController extends CommonController {
    public function index(){
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        $this->assign('search',$search);
        $maxPageNum=10;
        
        $where['prodid']=$_SESSION['prodid'];
        $where['name|url']=array('like','%'.$search.'%');
        $data=M('tp_link')->where($where)->order('sn')->page($page,$maxPageNum)->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    public function add(){       
        $map=array('prodid'=>$_SESSION['prodid']);
        $count=M('tp_link')->where($map)->count()+1;
        $this->assign("count",$count);
    
        $this->display();
    }
    public function insert(){
        $m=D('tp_link');        
        $_POST['prodid']=$_SESSION['prodid'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
            $this->success("成功",U('index'));
        }else{
            $this->error('失败');
        }
    }
    
    public function order(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += D('tp_link')->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
        }else{
            $this->error("排序失败...");
        }
    }
    
    public function mod(){
        $arr=D('tp_link')->order('sn')->find($_GET[id]);
        $this->assign('arr',$arr);
    
        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_link')->save($_POST)){
            $this->success("修改成功！",U('index'));
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function del(){
        $count =D('tp_link')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
}