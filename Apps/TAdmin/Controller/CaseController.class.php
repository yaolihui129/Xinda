<?php
namespace TAdmin\Controller;
class CaseController extends CommonController {
public function index(){
        /* 接收参数*/
         $funcid=$_GET['funcid'];
         /* 实例化模型*/
         $m=D('tp_func');
         $arr=$m->find($funcid);
         $this->assign('arr',$arr);
         $where['pathid']=$arr['pathid'];
         $data=$m->where($where)->order('sn,id')->select();
         $this->assign('data',$data);
         
    	 $m=D('tp_case');
    	 $where['funcid']=$funcid;
    	 $cases=$m->where($where)->order('sn,id')->select();
	     $this->assign('cases',$cases);
	     
	     /* 添加*/
	     $count=$m->where($where)->count()+1;
	     $this->assign("c",$count);
	     $this -> assign("state", formselect());	     
	     $this->assign("caozuo",PublicController::editor("steps"));
	     
	     $this->display();
    }



    public function insert(){
        /* 实例化模型*/
        $m=D('tp_case');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
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
        /* 接收参数*/
        $p=$_GET['p'];
        $this -> assign("p", $p);
        
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_case');
        $case=$m->find($id);
        $this->assign("case",$case);
        
        $where['funcid']=$case['funcid'];
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data); 
        
        $m=D('tp_rules');
        $rules=$m->where($where)->order('sn,id')->select();
        $this->assign('rules',$rules);
        
        
        $this -> assign("state", formselect($case['state']));
        $this -> assign("fproid", proselect($case['fproid'],"fproid"));
        $this -> assign("caozuo",PublicController::editor("steps",$case['steps']));

        $this->display();
    }
    
    public function data(){
        
        $this->display();
    
    }

    public function update(){
        /* 实例化模型*/
        $db=D('tp_case');
        $_POST['moder']=$_SESSION['realname'];
        //$_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){

        $db = D('tp_case');
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
   

    public function library(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
        /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>$testgp);
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $where=array("testgp"=>$testgp);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $m=M('branch');
        $where=array("zt_tp_case.fproid"=>$proid);
        $cases=$m
        ->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->join(' inner JOIN zt_tp_case ON zt_tp_func.id = zt_tp_case.funcid')
        ->where($where)
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id,zt_tp_case.sn,zt_tp_case.id")
        ->select();
        $this->assign('cases',$cases);
        $where=array("proid"=>$proid);
        $this->assign('w',$where);

        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_case');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
}