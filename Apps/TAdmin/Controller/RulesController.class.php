<?php
namespace TAdmin\Controller;
class RulesController extends CommonController {
    public function index(){
        /* 接收参数*/
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=D('tp_func');
        $arr=$m->find($funcid);
        $this->assign('arr',$arr);

        $where['pathid']=$arr['pathid'];
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=D('tp_rules');
        $where['funcid']=$funcid;
        $rules=$m->where($where)->order('sn,id')->select();
        $this->assign('rules',$rules);

        /* add*/
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("beizhu",PublicController::editor("remark"));
        
        $this->display();
    }



    public function insert(){
        /* 实例化模型*/
        $m=D('tp_rules');
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
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('tp_rules');
        $rule=$m->find($id);
        $this->assign("rule",$rule);
        
        $where['funcid']=$rule['funcid'];
        $data=$m->where($where)->select();
        $this->assign('data',$data);
                
        $this -> assign("state", formselect($rule['state']));
        $this -> assign("fproid", proselect($rule['fproid'],"fproid"));
        $this->assign("beizhu",PublicController::editor("remark",$rule['remark']));;

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('tp_rules');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        /* 实例化模型*/
        $db = D('tp_rules');
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
        $m=M('tp_rules');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}