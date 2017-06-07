<?php
namespace TestAdmin\Controller;

class FuncController extends CommonController{
    public function index(){
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $m=D('module');
        $arr=$m->find(I('pathid'));
        $this->assign("arr",$arr);
        
        $where['branch']=$arr['branch'];
        $where['state']="正常";        
        $pathes=$m->where($where)->order("sn,id")->select();
        $this->assign("pathes",$pathes);
        
        $m= D("tp_func");
        $map['pathid']=I('pathid');
        $funcs=$m->where($map)->order("sn")->select();
        $this->assign("funcs",$funcs);
     
	    $this->display();
    }
  public function add(){
      
      $m= M("project");
      $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
      $pros=$m->where($where)->order("end desc")->select();
      $this->assign("pros",$pros);
      
      $m=M("tp_func");
      $map['pathid']=I('pathid');     
      $funcs=$m->where($map)->order("sn")->select();
      $this->assign("funcs",$funcs);
      $this->assign("pathid",I('pathid'));
      
      $count=$m->where($map)->count()+1;
      $this->assign("c",$count);
      $this -> assign("state", formselect());
      $this -> assign("fproid", proselect($_SESSION['proid'],"fproid"));
      
      $this->display();
  }

   

    public function mod(){
        
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $m= D("tp_func");
        $data=$m->find(I('id'));
        $this->assign("data",$data);
        $where['pathid']=$data['pathid'];
        $funcs=$m->where($where)->order("sn")->select();
        $this->assign("funcs",$funcs);    

        $this -> assign("state", formselect($data['state']));
        $this -> assign("fproid", proselect($data['fproid'],"fproid"));

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