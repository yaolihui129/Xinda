<?php
namespace TAdmin\Controller;
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
        $m=M('tp_element');
        $where['funcid']=I('funcid');
        $this->assign('funcid',I('funcid'));
        $this -> assign("p", I('p'));
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this->assign("state", formselect());              
        $this->assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        
        $this->display();
    }
   
    public function mod(){
        $m=D('tp_element');
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

    public function setdstate(){
        $db=D('tp_case');
        if ($_GET['dstate']=='待维护'){
            $_GET['dstate']='已完成';
            $_GET['moder']=$_SESSION['realname'];
            if ($db->save($_GET)){
                 $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }

        }else{
            $_GET['dstate']='待维护';
            $_GET['moder']=$_SESSION['realname'];
            if ($db->save($_GET)){
               $this->success("修改成功！");
            }else{
                  $this->error("修改失败！");
           }
        }
    }

    public function library(){
        $_SESSION['proid']=I('proid');
        $m=D('project');
        $where=array("testgp"=>I('testgp',$_SESSION['testgp']));
        $pros=$m->where($where)->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);
        
        $where=array("zt_tp_prosys.project"=>$_SESSION['proid']);
        $elements=M("tp_prosys")->where($where)->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id,zt_tp_element.sn,zt_tp_element.id")
            ->join('inner JOIN zt_branch ON zt_branch.id = zt_tp_prosys.branch')
            ->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
            ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
            ->join(' inner JOIN zt_tp_element ON zt_tp_func.id = zt_tp_element.funcid')->select();
        $this->assign('elements',$elements);

        $this->display();
    }

    
}