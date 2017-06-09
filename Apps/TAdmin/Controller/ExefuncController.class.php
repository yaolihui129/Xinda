<?php
namespace TAdmin\Controller;
class ExefuncController extends CommonController{    
    public function index(){
        $map['zt_tp_exescene.id']=I('id');
        $pro=M('tp_stage')->where($map)
            ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
            ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
            ->find();
        $_SESSION['proid']=$pro['proid'];
        
        $m=D('tp_exescene');
        $arr=$m->find(I('id'));  
        $this->assign('arr',$arr);
    
        $where=array("stagetesterid"=>$arr['stagetesterid'],"type"=>$arr['type']);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);    

        $where=array("exesceneid"=>I('id'));
        $exe=M('tp_exefunc')->where($where)->order('sn,id')->select();
        $this->assign('exe',$exe);   
    
        $this->display();
    }


    public function test(){

        $m=D('tp_exescene');
        $where=array("stagetesterid"=>I('stagetesterid'),"type"=>I('type'));
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('tp_exefunc');
        $where=array("exesceneid"=>I('id'));
        $exe=$m->where($where)->select();
        $this->assign('exe',$exe);
        $where=array("stagetesterid"=>I('stagetesterid'),"exesceneid"=>I('id'),"proid"=>I('proid'),"type"=>I('type'));
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

    public function supdate(){
        $_POST['moder']=$_SESSION['realname'];    
        if (D('tp_exescene')->save($_POST)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }

}