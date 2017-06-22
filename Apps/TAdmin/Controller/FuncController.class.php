<?php
namespace TAdmin\Controller;

class FuncController extends CommonController{
    public function index(){
        $m=D('module');
        $arr=$m->find(I('pathid'));
        $this->assign("arr",$arr);
          
        $where=array('branch'=>$arr['branch'],'state'=>"正常");
        $data=$m->where($where)->order("sn,id")->select();
        $this->assign("data",$data);
        /* 实例化模型*/
        $m= D("tp_func");
        $map['pathid']=I('pathid');
        $funcs=$m->where($map)->order("sn")->select();
        $this->assign("funcs",$funcs);
        
        /* 添加*/
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);       
        $this->assign("state", formselect());
        $this->assign("fproid", proselect($_SESSION['proid'],"fproid"));
               
	    $this->display();
    }
  

    public function mod(){
        $m= D("tp_func");
        $func=$m->find(I('id'));
        $this->assign("func",$func);
        $where['pathid']=$func['pathid'];
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);      
        $this->assign("state", formselect($func['state']));
        $this->assign("fproid", proselect($func['fproid'],"fproid"));

        $this->display();
    }

   
    public function func(){        
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $_SESSION['proid']=$_GET['proid'];
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        $where=array('project'=>$_SESSION['proid']);
        $arr=M("tp_prosys")->where($where)->select();
        foreach ($arr as $ar){
            $sys[]=$ar['branch'];
        }
        
        $where=array('state'=>"正常");
        $arr=M('module')->where($where)->select();
        foreach ($arr as $ar){
            $path[]=$ar['id'];
        }
        $map['state']="正常";
        $map['sysid']=array('in',$sys);
        $map['pathid']=array('in',$path);
        $funcs=M('tp_func')->where($map)->order('sysid,pathid,sn,id')->select();
        $this->assign("data",$funcs);

        $this->display();

    }


    public function range(){
        $_SESSION['proid']=$_GET['proid'];
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>"$gp","deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_GET['proid']);
        $this->assign("arr",$arr);
        /* 实例化模型*/
        $s = D('branch');
        $where=array('zt_tp_func.fproid'=>$_GET['proid'],'zt_tp_func.state'=>'正常','zt_module.state'=>'正常');
        $data=$s->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->where($where)
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")
        ->select();
        $this->assign("data",$data);      

        $this->display();
    }

    public function library(){
        /* 接收参数*/
        $proid=$_SESSION['proid'];
        $sceneid=$_GET['sceneid'];
        /* 实例化模型*/
        $m= D("prosys");
        $where=array("zt_tp_prosys.proid"=>$proid);
        $data=$m->join('inner JOIN zt_system ON zt_system.id = zt_tp_prosys.sysid')
        ->join('inner JOIN zt_path ON zt_system.id = zt_path.sysid')
        ->where($where)
        ->order("zt_system.sysno,zt_path.sn,zt_path.id")
        ->select();
        $this->assign("data",$data);

        $m= D("tp_func");
        $pathid=!empty($_GET['pathid'])?$_GET['pathid']:$data[0]['id'];
        $where=array("pathid"=>$pathid);
        $funcs=$m->where($where)->order("sn")->select();
        $this->assign("funcs",$funcs);
        $m=D('tp_scenefunc');
        $where=array("sceneid"=>$sceneid);
        $sfunc=$m->where($where)->order('sn')->select();
        $this->assign("sfunc",$sfunc);

        $m=D('tp_hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $hfunc=$m->where($where)->order('sn')->select();
        $this->assign("hfunc",$hfunc);

        $where=array("proid"=>$proid,"sceneid"=>$sceneid,"pathid"=>$pathid);
        $this->assign('w',$where);


        $this->display();
    }

    public function modproid(){
        /* 实例化模型*/
        $db=D('tp_func');
        if ($db->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function pass(){   
        /* 接收参数*/
        $arr['id']=$_GET['funcid'];
        $arr['result']='通过';
        $arr['moder']=$_SESSION['realname'];
        $db=D('tp_func');
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }
    function passAll(){
        $db=D('tp_func');
        $where['fproid']=I('proid');
        $where['result']='未测试';
        $arr=$db->where($where)->select();
        if ($arr){
            foreach ($arr as $a){
                $a['result']='通过';
                $a['moder']=$_SESSION['realname'];
                $db->save($a);
            }
            $this->success("设置成功！");
        }else {
            $this->error("设置失败！");
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
        $arr['id']=$_GET['funcid'];
        $arr['result']='未测试';
        $arr['moder']=$_SESSION['realname'];
        $db=D('tp_func');
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }

    public function del(){
        $where['funcid']= $_GET['id'];
        $arr=D('tp_case')->where($where)->select();
        if ($arr){
            $this->error('该功能点下有用例，不能删除');
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