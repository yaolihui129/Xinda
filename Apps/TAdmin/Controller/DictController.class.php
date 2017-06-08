<?php
namespace TAdmin\Controller;
class DictController extends CommonController{
    public function index(){
        $where = !empty($_GET['type']) ? array("type"=>$_GET['type']) : array("type"=>"testgp");
         /* 实例化模型*/
    	 $m=M('dict');
         $tp=$m->field('type',false)->group('type')->select();
    	 $arr=$m->field('id,k,v,type,state,moder,utime',false)->where($where)->order('k')->select();
    	 
    	 $this->assign('data',$tp);
	     $this->assign('arr',$arr);
	     $this->assign('w',$where);
	    
	     $this->display();
    }

    public function add(){
        $m=M('dict');
        $where = array("type"=>$_GET['type']);
        $this->assign('type',I('type'));
        $arr=$m->field('id,k,v,type,state,moder,utime',false)->where($where)->order('k')->select();
        $this->assign('data',$arr);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect("","state"));        

        $this->display();
    } 

    public function mod(){
        $m=M('dict');
        $where = array("type"=>$_GET['type']);
        $this->assign('w',$where);
        $arr=$m->field('id,k,v,type,state',false)->where($where)->order('k')->select();
        $this->assign('data',$arr);
        
        $dic=$m->find($_GET['id']);        
        $this->assign('dic',$dic);
        $this->assign("state", formselect($dic['state'],"state"));       

        $this->display();
    }
   

}