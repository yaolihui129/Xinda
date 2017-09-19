<?php
namespace Admin\Controller;
class AdController extends CommonController {   
    function info(){
        $info=array(
            'table'=>'tp_ad',
            'name'=>'Ad',
            'idLenth'=>'6',
            'idType'=>'int'
        );
        return $info;
    }
    public function index(){
        $info=$this->info();
        $where=array('prodid'=>$_SESSION['prodid']);
        $data=M($info['table'])->where($where)->order('utime desc')->select();
        $this->assign('data',$data);           
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
        $this->Release($info['table'], $_GET['id'], $_GET['state']);
    }

    public function del(){//删除
        $info=$this->info();
        $this->ljshanChu($info['table'],I('id'));
    }
    
}