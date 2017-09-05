<?php
namespace Admin\Controller;
class AdController extends CommonController {
    public function index(){
        $where=array('prodid'=>$_SESSION['prodid']);
        $data=M($this->getTable())->where($where)->order('utime desc')->select();
        $this->assign('data',$data);           
        $this->display();
    }
    
    public function add(){
        $count=M($this->getTable())->count()+1;
        $this->assign("count",$count);      
        $this->display();
    }
    
    public function insert(){
        $this->dataInsert($this->getTable(), 6, $this->getName(), $_POST);
    }

    public function mod(){
        $arr=M($this->getTable())->find($_GET[id]);
        $this->assign('arr',$arr);       
        $this->display();
    }
    
    public function update(){//更新
        $this->dataUpdate($this->getTable(), $this->getName(), $_POST);
    }
    
    public function order(){ //排序     
        $this->paiXu($this->getTable(), $_POST);
    }
    

    public function fabu(){//发布、下线     
        $this->Release($this->getTable(), $_GET['id'], $_GET['state']);
    }

    public function del(){//删除
        $this->ljshanChu($this->getTable(),I('id'));
    }
    function getTable(){
        return 'tp_ad';
    }
    function getName(){
        return 'Ad';
    }
}