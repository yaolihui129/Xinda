<?php
/**
 * Created by PhpStorm.
 * User: yaolihui
 * Date: 2018/2/11
 * Time: 10:46
 */

namespace Report\Controller;
class ApiController extends WebInfoController {
    public function index(){
        $where=array("deleted"=>'0');
        $m=M("tp_apitest");
        $data=$m->where($where)->order('branch,adress')->select();
        $this->assign('data',$data);
        $this->display();
    }


    public function details(){

        $data=M("tp_apitest")->find(I(id));
        $this->assign('data',$data);
//        dump($data);

        $ver=M('')->select();

        $this->display();
    }

}