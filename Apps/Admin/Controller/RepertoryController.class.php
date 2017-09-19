<?php
namespace Admin\Controller;
class RepertoryController extends CommonController {
    function info(){
        $info=array(//商品库存
            'table'=>'tp_repertory',
            'name'=>'Repertory',
            'idLenth'=>'11',
            'idType'=>'int'
        );
        return $info;
    }

    public function index(){
        $info=$this->info();     
        $map['prodid']=$_SESSION['prodid'];
        $noms=I('id');
        if($noms){
            $_SESSION['normsid']=$noms;
        }
        $map['normsid']=$_SESSION['normsid'];        
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));
        $this->display();
    }

    public function add(){
        $info=$this->info();
        $map['normsid']=$_SESSION['normsid'];
        $count=M($info['table'])->where($map)->count()+1;
        $this->assign("count",$count);
        $this->display();
    }

    public function insert(){        
        $kc=getRepertory($_POST['normsid']);
        $credit=$_POST['credit'];
        if($credit-$kc>0){
            $this->error('库存不足');
        }elseif (!$_POST['desc']){
            $this->error('备注不能为空，请写明库存的来源和去向');
        }else {
            $info=$this->info();
            if($info['idType']=='int'){
                $this->dataIns($info['table'], $_POST,$info['name']);
            }elseif ($info['idType']=='char'){
                $this->dataInsert($info['table'], $info['idLenth'], $info['name'], $_POST);
            }
        }
        
        
    }

    public function mod(){
        $info=$this->info();
        $arr=M($info['table'])->find($_GET[id]);       
        $this->assign('arr',$arr);
        $map['normsid']=$_SESSION['normsid'];
        $count=M($info['table'])->where($map)->count()+1;
        $this->assign("count",$count);
        $this->display();
    }


}