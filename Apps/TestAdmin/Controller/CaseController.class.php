<?php
namespace TestAdmin\Controller;
class CaseController extends CommonController {
public function index(){
         $m=M('tp_func');
         $arr=$m->find(I('funcid'));
         $this->assign('arr',$arr);
         $where['pathid']=$arr['pathid'];
         $data=$m->where($where)->order('sn,id')->select();
         $this->assign('data',$data);
         
    	 $m=D('tp_case');
    	 $where['funcid']=I('funcid');
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
        if($m->add()){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){               
        $m=M('tp_case');
        $case=$m->find(I('id'));
        $this->assign("case",$case);
        $this -> assign("p", I('p'));
        
        $where['funcid']=$case['funcid'];
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data); 
        
         
        //获取模块
        $m=D('story');
        $where=array("module"=>$this->getModuleid($case['funcid']), 'deleted'=>'0');
        $rules=$m->where($where)->field('id,branch,module,title,status,stage,openedBy,lastEditedDate,version')->select();
        $this->assign('rules',$rules);
        
        
        $this -> assign("state", formselect($case['state']));
        $this -> assign("fproid", proselect($case['fproid'],"fproid"));
        $this -> assign("caozuo",PublicController::editor("steps",$case['steps']));

        $this->display();
    }
    
    function getModuleid($funcid){
        $m=D('tp_func');
        $date=$m->find($funcid);
        return $date['pathid'];
    }
    
    
    public function data(){
        
        $this->display();
    
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_case')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
           $num +=  D('tp_case')->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
            
        }else{
            $this->error("排序失败...");
        }
    }
   

    public function library(){
        $_SESSION['proid']=I('proid');
        $m= D("project");
        $where=array("testgp"=>I('testgp',$_SESSION['testgp']),"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);
        
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $m=M('branch');
        $where=array("zt_tp_case.fproid"=>$_SESSION['proid']);
        $cases=$m->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
                ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
                ->join(' inner JOIN zt_tp_case ON zt_tp_func.id = zt_tp_case.funcid')        
                ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id,zt_tp_case.sn,zt_tp_case.id")
                ->where($where)->select();
        $this->assign('cases',$cases);
        $where=array("proid"=>$_SESSION['proid']);
        $this->assign('w',$where);

        $this->display();
    }

    public function del(){
        $count =M('tp_case')->delete(I('id'));
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}