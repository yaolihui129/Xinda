<?php
namespace TAdmin\Controller;

class RiskController extends CommonController {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("project");
        $where=array("testgp"=>"$gp","deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $m = D("tp_risk");
        $where=array("proid"=>"$proid");
        $risks=$m->where($where)->select();
        $this->assign("risks",$risks);
        
        $count=$m->where($where)->count()+1;      
        $this->assign('c',$count);
        $this -> assign("state", formselect("打开","state","rstate"));
        $this -> assign("level", formselect("C","level","risklevel"));
        $this->assign("tamethod",PublicController::editor("amethod","暂无方案"));
        $this->assign("tremaks",PublicController::editor("remaks",""));
        
	     $this->display();
    }

   
    public function insert(){
        /* 实例化模型*/
        $m=D('tp_risk');
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
        $proid=$_GET['proid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m= D("tp_risk");
        $where=array("proid"=>$proid);
        $data=$m->where($where)->select();

        $this->assign("data",$data);
        $this->assign('w',$where);

        $risk=$m->find($id);
        $this->assign("risk",$risk);
        $this -> assign("level", formselect($risk['level'],"level","risklevel"));
        $this -> assign("state", formselect($risk['state'],"state","rstate"));
        $this->assign("tamethod",PublicController::editor("amethod",$risk['amethod']));
        $this->assign("tremaks",PublicController::editor("remaks",$risk['remaks']));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('tp_risk');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        /* 实例化模型*/
        $db = D('tp_risk');
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


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_risk');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }
    
    public function _empty(){
    
        $this->display('index');
    }
    
}