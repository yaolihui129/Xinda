<?php
namespace Admin\Controller;
class BillController extends CommonController {
    public function index(){
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION[$this->getName().'Search']=$_POST['search'];
            }else {
                $_SESSION[$this->getName().'Search']='';
            }
            $this->assign('search',$_SESSION[$this->getName().'Search']);
            $map['type|credit|debit|desc']=array('like','%'.$_SESSION[$this->getName().'Search'].'%');
        }
        
        $this->dataChaxun($this->getTable(), $this->getName(), $map,C('maxPageNum'),I('p'));
        $this->display();
    }
    

    public function add(){
        $count=M($this->getTable())->count()+1;
        $this->assign("count",$count);
        $this->display();
    }
    
    public function insert(){
        $this->dataIns($this->getTable(), $_POST);
    }
    
    public function mod(){
        $arr=M($this->getTable())->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->display();
    }
    
    public function update(){//更新
        $this->dataUpdate($this->getTable(), $this->getName(), $_POST);
    }    
    
    function getTable(){
        return 'tp_bill';
    }
    function getName(){
        return 'Bill';
    }
    
    
}