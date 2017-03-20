<?php
namespace TAdmin\Controller;

class FuncController extends CommonController{
    public function index(){
         /* 接收参数*/
        $pathid=$_GET['pathid'];
        $proid=$_SESSION['proid'];

        /* 实例化模型*/
        $m=D('module');
        $arr=$m->find($pathid);
        $this->assign("arr",$arr);
         
        $where['branch']=$arr['branch'];
        $where['state']="正常";        
        $data=$m->where($where)->order("sn,id")->select();
        $this->assign("data",$data);
        /* 实例化模型*/
        $m= D("tp_func");
        $map['pathid']=$pathid;
        $funcs=$m->where($map)->order("sn")->select();
        $this->assign("funcs",$funcs);
        
        /* 添加*/
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);       
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
               
	    $this->display();
    }
  

    public function insert(){
        $m=D('tp_func');
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
        /* 接收参数*/        
        $id=$_GET['id'];
        /* 实例化模型*/
        $m= D("tp_func");
        $func=$m->find($id);
        $this->assign("func",$func);
        $where['pathid']=$func['pathid'];
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        

        $this -> assign("state", formselect($func['state']));
        $this -> assign("fproid", proselect($func['fproid'],"fproid"));

        $this->display();
    }

   

    public function update(){
        /* 实例化模型*/
        $db=D('tp_func');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        /* 实例化模型*/
        $db = D('tp_func');
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


    public function func(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
         /* 实例化模型*/
        $m= D("project");
        $where['testgp']=$_SESSION['testgp'];
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $s = D("tp_prosys");
        $map['zt_tp_prosys.project']=$proid;
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
        /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);
        /* 实例化模型*/
        $s = D('branch');
        $where=array('zt_tp_func.fproid'=>$proid,'zt_tp_func.state'=>'正常','zt_module.state'=>'正常');
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
        $where=array("zt_tp_prosys.proid"=>"$proid");
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

        $where=array("proid"=>"$proid","sceneid"=>$sceneid,"pathid"=>$pathid);
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
    
    public function resetAll(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $db=D('tp_func');
        $where['fproid']=$proid;
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
    
        /* 接收参数*/
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
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $where['funcid']=$id;
        /* 实例化模型*/
        $m=D('tp_case');
        $arr=$m->where($where)->select();
        if ($arr){
            $this->error('该功能点下有用例，不能删除');
        }else {
            $m=D('tp_rules');
            $arr=$m->where($where)->select();
            if ($arr){
                $this->error('该功能点下有规则，不能删除');
            }else {
                $m=D('tp_element');
                $arr=$m->where($where)->select();
                if ($arr){
                    $this->error('该功能点下有控件，不能删除');
                }else {
                    $m=M('tp_func');                   
                    $count =$m->delete($id);
                    if ($count>0) {
                        $this->success('删除成功');
                    }else{
                        $this->error('删除失败');
                    }
                }
            }
        }
        
       
    }
    
    
    public function _empty(){
    
        $this->display('index');
    }


}