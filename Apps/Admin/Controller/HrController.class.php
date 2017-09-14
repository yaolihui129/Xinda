<?php
namespace Admin\Controller;
class HrController extends CommonController {
    function info(){
        $info=array(
            'table'=>'tp_norms',
            'name'=>'Norms',
            'idLenth'=>'15',
            'idType'=>'int'
        );
        return $info;
    }
     public function index(){            
         $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
         $this->assign('search',$search);
         $where['title|num|desc|salary|place|rtime']=array('like','%'.$search.'%');
         $where=array('prodid'=>$_SESSION['prodid']);
         $page=!empty($_GET['page']) ? $_GET['page'] : 1;         
         $maxPageNum=10;    
         $arr=M('tp_hr')->where($where)->page($page,$maxPageNum)->select();
         $this->assign('data',$arr);
    
         $this->display();
     }

    public  function add(){

        $this->display();
    }

    public function insert(){
        $m=D('tp_hr');
        $_POST['prodid']=$_SESSION['prodid'];
        $_POST['moder']=$_SESSION['realname'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
            $this->success("添加成功");
        }else{
            $this->error('用户注册失败');
        }
    }

    public function mod(){
        $data=M('tp_hr')->find($_GET['id']);
        $this->assign('data',$data);

        $this->display();
    }
    
    public function fabu(){
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $this->assign('search',$search);
        $where['title|num|desc|salary|place|rtime']=array('like','%'.$search.'%');
        $where=array('state'=>'正常');
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        $maxPageNum=10;
        $arr=M('tp_hr')->where($where)->page($page,$maxPageNum)->select();
        $this->assign('data',$arr);
        
        $this->display();
    }
    
    public function set(){
        $arr['id']=$_GET['id'];
        $arr['state']=$_GET['state'];
        $arr['moder']=$_SESSION['realname'];
        if($_GET['state']=='招聘中'){
            $arr['rtime']=date('Y-m-d',time());
        }
        if (D('tp_hr')->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }
    

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_hr')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function del(){
        $count =M('tp_hr')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
}