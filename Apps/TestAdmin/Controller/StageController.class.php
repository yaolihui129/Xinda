<?php
namespace TestAdmin\Controller;

class StageController extends CommonController {
    public function index(){
        $_SESSION['proid']=I('proid');
         /* 实例化模型*/
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $m = D("tp_stage");
        $where=array("proid"=>$_SESSION['proid']);
        $stages=$m->where($where)->order("sn,id")->select();
        $this->assign("stages",$stages);
              
        /* 阶段添加*/        
        $count=$m->where($where)->count()+1;
        $this->assign('c',$count);       
        $this -> assign("state", formselect("未开始","state","prost"));
        $end=date("Y-m-d",time()+1*24*3600);
        $this->assign('end',$end);
        
	    $this->display();
    }

    public function insert(){
        $m=D('tp_stage');
        $_POST['moder']=$_SESSION['realname'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){
        /* 实例化模型*/ 
        $m= D("tp_stage");
        $where['proid']=$_SESSION['proid'];
        $pros=$m->where($where)->order("sn,id")->select();
        $this->assign("data",$pros);
        
        $stage=$m->find(I('id'));
        $this->assign("stage",$stage);
        
        $this -> assign("state", formselect($stage['state'],"state","prost"));
        $this -> assign("document", formselect($stage['document'],"document","document"));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('tp_stage');
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_stage')->save($_POST)){
            $this->success("修改成功！",U("Stage/index?proid={I('proid')}"));
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        /* 实例化模型*/
        $db = D('tp_stage');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }
    
    public function modstate(){
        if ($_GET['state']=="未开始"){
            $_GET['state']="进行中";
        }elseif ($_GET['state']=="进行中"){
            $_GET['state']="已完成";
        }

        if (D('tp_stage')->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function del(){
        if (M('tp_stage')->delete(I('id'))>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}