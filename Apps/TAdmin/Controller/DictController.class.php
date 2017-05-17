<?php
namespace TAdmin\Controller;
class DictController extends CommonController{
    public function index(){
        $where = !empty($_GET['type']) ? array("type"=>$_GET['type']) : array("type"=>"testgp");
         /* 实例化模型*/
    	 $m=M('dict');
         $tp=$m->field('type',false)->group('type')->select();
    	 $arr=$m->field('id,k,v,type,state,moder,utime',false)->where($where)->order('k')->select();
    	 
    	 $this->assign('data',$tp);
	     $this->assign('arr',$arr);
	     $this->assign('w',$where);
	    
	     $this->display();
    }

    public function add(){
        $m=M('dict');
        $where = array("type"=>$_GET['type']);
        $this->assign('w',$where);
        $arr=$m->field('id,k,v,type,state,moder,utime',false)->where($where)->order('k')->select();
        $this->assign('data',$arr);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect("","state"));        

        $this->display();
    }

    public function insert(){
        $m=D('dict');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){
        $m=M('dict');
        $where = array("type"=>$_GET['type']);
        $this->assign('w',$where);
        $arr=$m->field('id,k,v,type,state',false)->where($where)->order('k')->select();
        $this->assign('data',$arr);
        
        $dic=$m->find($_GET['id']);        
        $this->assign('dic',$dic);
        $this->assign("state", formselect($dic['state'],"state"));       

        $this->display();
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('dict')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function del(){
        $count =M('dict')->delete( $_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    

}