<?php
namespace Admin\Controller;
class DictController extends CommonController{
    public function index(){              
         /* 实例化模型*/
    	 $m=M('tp_dict');
         $arr=$m->field('type',false)->group('type')->select();
         $this->assign('arr',$arr);       
         if ($_GET['type']){//如果有URL参数，从参数取值
             $type=$_GET['type'];
         }elseif ($_SESSION['dictType']){//没有参数，从$_SESSION中取值
             $type=$_SESSION['dictType'];
         }else {//如果都没有，给默认值state
             $type="state";
         }
         $_SESSION['dictType']=$type;
         $this->assign('type',$type);

    	 $data=$m->field('id,k,v,type,state,prodid,moder,utime',false)
    	 ->where(array('type'=>$type))->order('k')->select();
	     $this->assign('data',$data);

	     $this->display();
    }

    public function add(){
        $type= $_SESSION['dictType'];
        $this->assign("type",$type);
        $where = array("type"=>$type);
        $count=M('tp_dict')->where($where)->count()+1;
        $this->assign("count",$count);
        $this -> assign("state", formSV("","state"));

        $this->display();
    }
    public function insert(){
        $this->dataInsert($this->getTable(), 8, $this->getName(), $_POST);
    }

    
    public function mod(){
        $arr=M($this->getTable())->find($_GET[id]);
        $this->assign('arr',$arr);
        $this -> assign("state", formSV($arr['state'],"state"));
        $this->display();
    }
    
    public function update(){//更新
        $this->dataUpdate($this->getTable(), $this->getName(), $_POST);
    }

    public function del(){//删除
        $this->shanChu($this->getTable(),I('id'));
    }

    function getTable(){
        return 'tp_dict';
    }
    function getName(){
        return 'dict';
    }
}