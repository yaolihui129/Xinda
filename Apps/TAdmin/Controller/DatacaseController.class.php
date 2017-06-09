<?php
namespace TAdmin\Controller;
class DatacaseController extends CommonController{
    public function mod(){
        $where=array("funcid"=>I('funcid'));      
        $data=M('tp_element')->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $this->assign('funcid',I('funcid'));
        
        $m=M('tp_case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find(I('id'));
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $this->display();

    }

   
    
}