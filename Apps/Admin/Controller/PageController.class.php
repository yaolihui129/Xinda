<?php
namespace Admin\Controller;
class PageController extends CommonController {
    public function index(){
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        $this->assign('search',$search);
        $maxPageNum=10;
        
        $where['prodId']=$_SESSION['prodid'];
        $where['name|content']=array('like','%'.$search.'%');
        $data=M('tp_page')->where($where)->page($page,$maxPageNum)->select();
        $this->assign('data',$data);
        $this->display();
        
    }
    
    public function add(){
        
    
        $this->display();
    }
    
    public function insert(){
        $m=D('tp_page');
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(40);
            $arr=$m->find($id);
        } while ($arr);
        $_POST['id']=$id;
        $_POST['moder']=$_SESSION['realname'];
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
    
    public function mod(){
        $arr=D('tp_page')->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->assign("state", formSV($arr['state'],"state"));
    
        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_page')->save($_POST)){
            $this->success("修改成功！",U('index'));
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function shanchu(){
        $_POST['isDelete']=1;
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_page')->save($_POST)){
            $this->success("删除成功！");
        }else{
            $this->error("删除失败！");
        }
    }
    
    public function del(){
        $count =D('tp_page')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
}