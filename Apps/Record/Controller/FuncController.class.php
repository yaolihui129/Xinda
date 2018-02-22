<?php
namespace Record\Controller;

class FuncController extends CommonController{
    public function index(){
        $m=D('module');
        $arr=$m->find(I('pathid'));
        $this->assign("arr",$arr);
          
        $where=array('branch'=>$arr['branch'],'deleted'=>"0");
        $data=$m->where($where)->select();
        $this->assign("data",$data);
        /* 实例化模型*/
        $m= D("tp_func");
        $map['pathid']=I('pathid');
        $funcs=$m->where($map)->order("sn")->select();
        $this->assign("funcs",$funcs);
        
        /* 添加*/
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);       
        $this->assign("state", formselect());

               
	    $this->display();
    }
  

    public function mod(){
        $m= D("tp_func");
        $func=$m->find(I('id'));
        $this->assign("func",$func);
        $data=$m->order("sn")->select();
        $this->assign("data",$data);      
        $this->assign("state", formselect($func['state']));

        $this->display();
    }


}