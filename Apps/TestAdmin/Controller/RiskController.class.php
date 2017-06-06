<?php
namespace TestAdmin\Controller;

class RiskController extends CommonController {
    public function index(){
        $_SESSION['proid']=I('proid');

        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find( $_SESSION['proid']);
        $this->assign("arr",$arr);

        $m = D("tp_risk");
        $where=array("proid"=> $_SESSION['proid']);
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
        $m=D('tp_risk');
        $_POST['moder']=$_SESSION['realname'];
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($m->add()){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }

    public function mod(){
        $m= D("tp_risk");
        $where=array("proid"=>I('proid'));
        $data=$m->where($where)->select();

        $this->assign("data",$data);
        $this->assign('w',$where);

        $risk=$m->find(I('id'));
        $this->assign("risk",$risk);
        $this -> assign("level", formselect($risk['level'],"level","risklevel"));
        $this -> assign("state", formselect($risk['state'],"state","rstate"));
        $this->assign("tamethod",PublicController::editor("amethod",$risk['amethod']));
        $this->assign("tremaks",PublicController::editor("remaks",$risk['remaks']));

        $this->display();
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_risk')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
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
        $count =M('tp_risk')->delete(I('id'));
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }
   
}