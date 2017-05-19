<?php
namespace TAdmin\Controller;
class ExefuncController extends CommonController{    
    public function index(){
        $map['zt_tp_exescene.id']=$_GET['id'];
        $pro=M('tp_stage')->where($map)
            ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
            ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
            ->find();
        $_SESSION['proid']=$pro['proid'];
        
        $m=D('tp_exescene');
        $arr=$m->find($_GET['id']);  
        $this->assign('arr',$arr);
    
        $where=array("stagetesterid"=>$arr['stagetesterid'],"type"=>$arr['type']);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);    

        $where=array("exesceneid"=>$_GET['id']);
        $exe=M('tp_exefunc')->where($where)->order('sn,id')->select();
        $this->assign('exe',$exe);   
    
        $this->display();
    }


    public function test(){
        /* 接收参数*/
        $stagetesterid=$_GET['stagetesterid'];
        $proid=$_GET['proid'];
        $type=$_GET['type'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('tp_exescene');
        $where=array("stagetesterid"=>$stagetesterid,"type"=>$type);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('tp_exefunc');
        $where=array("exesceneid"=>$id);
        $exe=$m->where($where)->select();
        $this->assign('exe',$exe);
        $where=array("stagetesterid"=>$stagetesterid,"exesceneid"=>$id,"proid"=>$proid,"type"=>$type);
        $this->assign('w',$where);
    
        $this->display();
    }



    public function pass(){    
        $_GET['result']="通过";
        $_GET['moder']=$_SESSION['realname'];
        $db=D('tp_exefunc');
        if ($db->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function update(){
        /* 实例化模型*/
        $db=D('tp_exefunc');
        $data=$db->find($_POST['id']);
        $funcid=$data['funcid'];
        $_POST['moder']=$_SESSION['realname'];
        if ($_POST['remark']){
            if ($db->save($_POST)){
                $arr['id']=$funcid;
                $arr['result']='失败';
                $arr['moder']=$_SESSION['realname'];
                $arr['updateTime']=date("Y-m-d H:i:s",time());
                $db=M('tp_func');
                if ($db->save($arr)){
                    $this->success("成功！");
                }else{
                    $this->error("失败！");
                }
            }else{
                $this->error("失败！");
            }
            
        }else {
            $this->error("必须填写失败描述！");
        }
        
        
            
    }


    public function order(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += D('tp_exescene')->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }



    public function supdate(){
        $_POST['moder']=$_SESSION['realname'];    
        if (D('tp_exescene')->save($_POST)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }

}