<?php
namespace Admin\Controller;
class BillController extends CommonController {
    function info(){
        $info=array(
            'table'=>'tp_bill',
            'name'=>'Bill',
            'idLenth'=>'6',
            'idType'=>'int'
        );
        return $info;
    }

    
    public function index(){
        $info=$this->info();
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION[$info['name'].'Search']=$_POST['search'];
            }else {
                $_SESSION[$info['name'].'Search']='';
            }
            $this->assign('search',$_SESSION[$info['name'].'Search']);
            $map['type|credit|debit|desc']=array('like','%'.$_SESSION[$info['name'].'Search'].'%');
        }
        $map['prodid']=$_SESSION['prodid'];
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));
        $this->display();
    }
    

    public function add(){
        $info=$this->info();
        $count=M($info['table'])->count()+1;
        $this->assign("count",$count);
        $this->display();
    }
    
    public function insert(){
        $info=$this->info();
        if($info['idType']=='int'){
            $this->dataIns($info['table'], $_POST,$info['name']);
        }elseif ($info['idType']=='char'){
            $this->dataInsert($info['table'], $info['idLenth'], $info['name'], $_POST);
        }
    }
    
    public function mod(){
        $info=$this->info();
        $arr=M($info['table'])->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->display();
    }
    
    public function update(){//更新
        $info=$this->info();
        $this->dataUpdate($info['table'], $info['name'], $_POST);
    }
    
    public function order(){ //排序
        $info=$this->info();
        $this->paiXu($info['table'], $_POST);
    }
    
    
    public function fabu(){//发布、下线
        $info=$this->info();
        $this->Release($info['table'], I('id'), I('state'));
    }
    
    public function del(){//删除
        $info=$this->info();
        $this->ljshanChu($info['table'],I('id'));
    }
    
     
    
    
    
    
}