<?php
namespace TestAdmin\Controller;

class FuncController extends CommonController{
    public function index(){
        $m=D('module');
        $arr=$m->find(I('pathid'));
        $this->assign("arr",$arr);
         
        $where['branch']=$arr['branch'];
        $where['state']="正常";        
        $data=$m->where($where)->order("sn,id")->select();
        $this->assign("data",$data);
        
        $m= D("tp_func");
        $map['pathid']=I('pathid');
        $funcs=$m->where($map)->order("sn")->select();
        $this->assign("funcs",$funcs);
        
        /* 添加*/
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);       
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($_SESSION['proid'],"fproid"));
               
	    $this->display();
    }
  

    public function insert(){
        $m=D('tp_func');
        $_POST['moder']=$_SESSION['realname'];      
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
        $m= D("tp_func");
        $func=$m->find(I('id'));
        $this->assign("func",$func);
        $where['pathid']=$func['pathid'];
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);      

        $this -> assign("state", formselect($func['state']));
        $this -> assign("fproid", proselect($func['fproid'],"fproid"));

        $this->display();
    }

   

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_func')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += D('tp_func')->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
           $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }


    public function func(){
        $_SESSION['proid']=I('proid');
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $s = D("tp_prosys");
        $map['zt_tp_prosys.project']=$_SESSION['proid'];
        $map['zt_module.state']='正常';
        $map['zt_tp_func.state']='正常';
        $data=$s->where($map)
        ->join('zt_branch ON zt_tp_prosys.branch =zt_branch.id')
        ->join('zt_module ON zt_branch.id = zt_module.branch')
        ->join('zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")
        ->select();
        $this->assign("data",$data);

        $this->display();

    }


    public function range(){
        $_SESSION['proid']=I('proid');
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);
        /* 实例化模型*/
        $s = D('branch');
        $where=array('zt_tp_func.fproid'=>$_SESSION['proid'],'zt_tp_func.state'=>'正常','zt_module.state'=>'正常');
        $data=$s->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->where($where)
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")
        ->select();
        $this->assign("data",$data);      

        $this->display();
    }

    public function library(){
        $where=array("zt_tp_prosys.proid"=>$_SESSION['proid']);
        $data=M("prosys")->join('inner JOIN zt_system ON zt_system.id = zt_tp_prosys.sysid')
        ->join('inner JOIN zt_path ON zt_system.id = zt_path.sysid')->where($where)
        ->order("zt_system.sysno,zt_path.sn,zt_path.id")->select();
        $this->assign("data",$data);
        $where=array("pathid"=>I('pathid',$data[0]['id']));
        $funcs=D("tp_func")->where($where)->order("sn")->select();
        $this->assign("funcs",$funcs);
        $m=D('tp_scenefunc');
        $where=array("sceneid"=>I('sceneid'));
        $sfunc=$m->where($where)->order('sn')->select();
        $this->assign("sfunc",$sfunc);

        $m=D('tp_hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $hfunc=$m->where($where)->order('sn')->select();
        $this->assign("hfunc",$hfunc);

        $where=array("proid"=>$_SESSION['proid'],"sceneid"=>I('sceneid'),"pathid"=>I('pathid',$data[0]['id']));
        $this->assign('w',$where);


        $this->display();
    }

    public function modproid(){
        if (D('tp_func')->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function pass(){   
        $arr['id']=I('funcid');
        $arr['result']='通过';
        $arr['moder']=$_SESSION['realname'];
        if (D('tp_func')->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }
    
    public function resetAll(){
        $db=D('tp_func');
        $where['fproid']=I('proid');
        $where['result']='失败';
        $arr=$db->where($where)->select();
        if ($arr){
            foreach ($arr as $a){
                $a['result']='未测试';
                $a['moder']=$_SESSION['realname'];
                $db->save($a);
            }  
            $this->success("重置成功！");
        }else {
            $this->error("无需重置！");
        }
        
    }
    
    public function reset(){
        $arr['id']=I('funcid');
        $arr['result']='未测试';
        $arr['moder']=$_SESSION['realname'];
        if (D('tp_func')->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }

    public function del(){
        $where['funcid']= I('funcid');
        $arr=D('tp_case')->where($where)->select();
        if ($arr){
            $this->error('该功能点下有用例，不能删除');
        }else {
            $arr=D('tp_rules')->where($where)->select();
            if ($arr){
                $this->error('该功能点下有规则，不能删除');
            }else {
                $arr=D('tp_element')->where($where)->select();
                if ($arr){
                    $this->error('该功能点下有控件，不能删除');
                }else {
                    $m=M('tp_func');                   
                    $count =M('tp_func')->delete($_GET['id']);
                    if ($count>0) {
                        $this->success('删除成功');
                    }else{
                        $this->error('删除失败');
                    }
                }
            }
        }             
    }    
 
}