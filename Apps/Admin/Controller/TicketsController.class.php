<?php
namespace Admin\Controller;
class TicketsController extends CommonController {

    public function index(){
        $voucherid = !empty($_GET['id']) ? $_GET['id'] : $_SESSION['voucherid'];

        $m=D('xl_voucher');
        $arr=$m->select();
        $this->assign('arr',$arr);


        $m=D('xl_tickets');
        $where=array("voucherid"=>$voucherid,"state"=>'设奖');
        $data=$m->where($where)->order('result')->select();
        $this->assign('data',$data);
        $this->assign('w',$where);


        $this->display();


    }
}