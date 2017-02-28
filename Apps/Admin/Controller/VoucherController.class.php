<?php
namespace Admin\Controller;
class VoucherController extends CommonController {
    public function index(){
        $m=D('xl_voucher');
        $arr=$m->order('end desc')->select();
        $this->assign('arr',$arr);
        
        $this->display();
    }
    
    public  function add(){
        $start=date("Y-m-d",time());
        $m=M('xl_voucher');
        $arr=$m->order('end desc')->select();
        $this->assign('arr',$arr);
        $this->assign("remark",PublicController::editor("remark",$arr['desc']));
        $this->assign("start", PublicController::date("start",$start));
        $this->assign("end", PublicController::date("end"));
        $this->assign("state", PublicController::stateSelect("正常","state","state"));
        $this->assign("voucher", PublicController::stateSelect("抽奖","voucher","voucher"));
    
        $this->display();
    }
    
    public function insert(){
    
        $m=D('xl_voucher');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        $_SESSION['voucherid']=$lastId;
        if($lastId){
            $arr['voucherid']=$lastId;
            $arr['adder']=$_SESSION['realname'];
            $arr['moder']=$_SESSION['realname'];
            $arr['createTime']=date("Y-m-d H:i:s",time());
            $m=D('tickets');
            //奖券入库
            if(!$m->create($arr)){
                $this->error($m->getError());
            }
            for ($i=0;$i<$_POST['total'];$i++){
                $last=$m->add($arr);
            }
            if($last){
                $where=array("voucherid"=>$lastId,"state"=>'新建');
    
    
                $set['state']='设奖';
                $set['moder']=$_SESSION['realname'];
                //设置特等奖
                $set['result']='0:特等奖';
                for ($i=0;$i<$_POST['specia'];$i++){
                    $arr=$m->where($where)->field("id")->select();
                    $count=$m->where($where)->count();
                    echo '特等奖：'.$count;
                    $d=rand(0,$count-1);
                    $set['id']=$arr[$d]['id'];
                    echo  $set['id'].';';
                    $set['code']=rand(100000, 999999);
                    $isSet=$m->save($set);
                }
                //设置一等奖
                $set['result']='1:一等奖';
                for ($i=0;$i<$_POST['first'];$i++){
                    $arr=$m->where($where)->field("id")->select();
                    $count=$m->where($where)->count();
                    echo '一等奖：'.$count;
                    $d=rand(0,$count-1);
                    $set['id']=$arr[$d]['id'];
                    echo  $set['id'].';';
                    $set['code']=rand(100000, 999999);
                    $isSet=$m->save($set);
                }
                //设置二等奖
                $set['result']='2:二等奖';
                for ($i=0;$i<$_POST['second'];$i++){
                    $arr=$m->where($where)->field("id")->select();
                    $count=$m->where($where)->count();
                    echo '二等奖：'.$count;
                    $d=rand(0,$count-1);
                    $set['id']=$arr[$d]['id'];
                    echo  $set['id'].';';
                    $set['code']=rand(100000, 999999);
                    $isSet=$m->save($set);
                }
    
                //设置三等奖
                $set['result']='3:三等奖';
                for ($i=0;$i<$_POST['third'];$i++){
                    $arr=$m->where($where)->field("id")->select();
                    $count=$m->where($where)->count();
                    echo '三等奖：'.$count;
                    $d=rand(0,$count-1);
                    $set['id']=$arr[$d]['id'];
                    echo  $set['id'].';';
                    $set['code']=rand(100000, 999999);
                    $isSet=$m->save($set);
                }
                //设置参与奖
                $set['result']='4:参与奖';
                for ($i=0;$i<$_POST['canyu'];$i++){
                    $arr=$m->where($where)->field("id")->select();
                    $count=$m->where($where)->count();
                    echo '参与奖：'.$count;
                    $d=rand(0,$count-1);
                    $set['id']=$arr[$d]['id'];
                    echo  $set['id'].';';
                    $set['code']=rand(100000, 999999);
                    $isSet=$m->save($set);
                }
                if ($isSet){
                    $this->redirect('/Admin/Tickets/index');
                }else{
                    $this->error("失败！");
                }
            }else{
                $this->error('奖券创建失败');
            }
        }else{
            $this->error('活动创建失败');
        }
    }
    
    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('xl_voucher');
        $arr=$m->order('end desc')->select();
        $this->assign('arr',$arr);
    
        $data=$m->find($id);
        $this->assign('data',$data);
        $this->assign("remark",PublicController::editor("remark",$data['remark']));
        $this->assign("start", PublicController::date("start",$data['start']));
        $this->assign("end", PublicController::date("end",$data['end']));
        $this->assign("state", PublicController::stateSelect($data['state'],"state","state"));
        $this->assign("voucher", PublicController::stateSelect($data['voucher'],"voucher","voucher"));
    
        $this->display();
    }
    
    public function update(){
        /* 实例化模型*/
        $db=D('xl_voucher');
    
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('xl_voucher');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
    
    
}