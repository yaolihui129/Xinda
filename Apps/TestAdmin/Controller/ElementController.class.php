<?php
namespace TestAdmin\Controller;
class ElementController extends CommonController{
    public function index(){
        $arr=M('tp_func')->find(I('funcid'));
        $this->assign('arr',$arr);

        $where['funcid']=I('funcid');
        $data=M('tp_element')->where($where)->order('sn,id')->select();
        $this->assign('data',$data);
 
        $m=D('tp_case');
        $cases=$m->where($where)->order('sn,id')->select();
        $this->assign('cases',$cases);
        
        $count=$m->where($where)->count()+1;
        $this->assign("cc",$count);
        $this->assign("caozuo",PublicController::editor("steps"));
        
	    $this->display();
    }

    public function add(){

        
        /* 实例化模型*/
        $m=M('tp_element');
        $where['funcid']=I('funcid');
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $this->assign('funcid',I('funcid'));
        $this -> assign("p", I('p'));
        
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());              
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        
        $this->display();
    }
   

    public function insert(){
        $m=D('tp_element');
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
        $m=M('tp_element');
        $element=$m->find(I('id'));
        $this->assign('element',$element);
        $this -> assign("p", I('p'));
        
        $where['funcid']=$element['funcid'];
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        
        $this -> assign("state", formselect($element['state']));
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));       

        $this->display();
    }

  

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_element')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num +=  D('tp_element')->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("没有修改，无需排序");
        }
    }


    public function setdstate(){
        if ($_GET['dstate']=='待维护'){
            $_GET['dstate']='已完成';
            $_GET['moder']=$_SESSION['realname'];
            if (D('tp_case')->save($_GET)){
                 $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }

        }else{
            $_GET['dstate']='待维护';
            $_GET['moder']=$_SESSION['realname'];
            if (D('tp_case')->save($_GET)){
               $this->success("修改成功！");
            }else{
                  $this->error("修改失败！");
           }
        }
    }

    public function library(){
        $_SESSION['proid']=I('proid');
        /* 实例化模型*/
        $m=D('project');
        $where=array("testgp"=>I('testgp',$_SESSION['testgp']));
        $pros=$m->where($where)->select();
       //$this->assign('data',$data);
        $this->assign("pros",$pros);
        
        $arr=$m->find( $_SESSION['proid']);
        $this->assign("arr",$arr);
        

        $m=D("tp_prosys");
        $where=array("zt_tp_prosys.project"=> $_SESSION['proid']);
        $elements=$m->join('inner JOIN zt_branch ON zt_branch.id = zt_tp_prosys.branch')
        ->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->join(' inner JOIN zt_tp_element ON zt_tp_func.id = zt_tp_element.funcid')
        ->where($where)
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id,zt_tp_element.sn,zt_tp_element.id")
        ->select();
        $this->assign('elements',$elements);
        $this->assign('w',$where);

        $this->display();
    }

    public function del(){    
        $count =D('tp_element')->delete(I('id'));
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}