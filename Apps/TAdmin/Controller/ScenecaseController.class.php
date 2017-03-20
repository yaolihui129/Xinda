<?php
namespace TAdmin\Controller;
class ScenecaseController extends CommonController {
public function index(){
        /* 接收参数*/        
        $sfuncid=$_GET['sfuncid'];               
        /* 实例化模型*/
        $m=D('tp_scenefunc');
        $sf=$m->find($sfuncid);
        $this->assign("sf",$sf);        
        
        $m=D('branch');
        $where=array("zt_tp_scenefunc.sceneid"=>$sf['sceneid']);
        $data=$m->join("inner JOIN zt_path ON zt_branch.id = zt_path.sysid")
        ->join("inner JOIN zt_tp_func ON zt_path.id = zt_tp_func.pathid")
        ->join("inner JOIN zt_tp_scenefunc ON zt_tp_func.id = zt_tp_scenefunc.funcid")
        ->where($where)->order('zt_tp_scenefunc.sn')->select();
        $this->assign("data",$data);
        
        $m=D('tp_case');
        $where=array("funcid"=>$sf['funcid']);
        $arr=$m->where($where)->select();
        $this->assign("arr",$arr);       

        $this->display();
    }

    public function bind(){
        /* 接收参数*/
        $sfuncid=$_GET['sfuncid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('tp_case');
        $data=$m->find($id);
        $arr['id']=$sfuncid;
        $arr['caseid']=$id;
        $arr['casestate']='已绑定';
        $arr['casemain']=$data['main'];
        $arr['caseexpected']=$data['expected'];
        $arr['num1']=$data['num1'];
        $arr['num2']=$data['num2'];
        $arr['num3']=$data['num3'];
        $arr['num4']=$data['num4'];
        $arr['num5']=$data['num5'];
        $arr['num6']=$data['num6'];
        $arr['num7']=$data['num7'];
        $arr['num8']=$data['num8'];
        $arr['num9']=$data['num9'];
        $arr['num10']=$data['num10'];
        $arr['num11']=$data['num11'];
        $arr['num12']=$data['num12'];
        $arr['num13']=$data['num13'];
        $arr['num14']=$data['num14'];
        $arr['num15']=$data['num15'];
        $arr['num16']=$data['num16'];
        $arr['num17']=$data['num17'];
        $arr['num18']=$data['num18'];
        $arr['num19']=$data['num19'];
        $arr['num20']=$data['num20'];
        $arr['moder']=$_SESSION['realname'];
        $m=D('tp_scenefunc');
        if ($m->save($arr)){
            $this->success("绑定成功！");
        }else{
            $this->error("绑定失败！");
        }
    }
    
    public function _empty(){
    
        $this->display('index');
    }
    
}