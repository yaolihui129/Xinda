<?php
namespace Anshun\Controller;
class VoucherController extends WebInfoController {   
    public function index(){        
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息        
        $m=D('tp_voucher');
        $where=array("state"=>5);
        $arr=$m->where($where)->order('end desc')->select();
        $this->assign('arr',$arr);

        $id=!empty($_GET['id']) ? $_GET['id'] : $arr[0]['id'];
        $data=$m->where($where)->find($id);
        $this->assign('data',$data);
        $this->display();
    }

    public function choujiang(){
        $m=D('tp_tickets');
        $where=array("voucherid"=>$_GET['id']);
        $arr=$m->where($where)->field("id")->select();
        $count=$m->where($where)->count();
        $d=rand(0,$count-1);
        $set['id']=$arr[$d]['id'];
        echo  $set['id'].';';
        $_SESSION['ticketsid']=$set['id'];
        $set[ip]=$_SESSION['ip'];
        $set['moder']='客户';
        $set['state']='抽奖';
        $set['chouj']=1;
        $isSet=$m->save($set);
        if ($isSet){
            $this->redirect('/Anshun/Voucher/tickets');
        }else{
            $this->error("失败！");
        }
    }
}