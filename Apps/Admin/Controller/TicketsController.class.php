<?php
namespace Admin\Controller;
class TicketsController extends CommonController {

    public function index(){
        $m=D('tp_voucher');
        $arr=$m->select();
        $this->assign('arr',$arr);

        $m=D('tp_tickets');
//         $where=array("voucherid"=>$voucherid,"state"=>'设奖');
        $data=$m->where($where)->order('result')->select();
        $this->assign('data',$data);
        $this->assign('w',$where);

        $this->display();


    }
}