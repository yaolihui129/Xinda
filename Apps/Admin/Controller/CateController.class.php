<?php
namespace Admin\Controller;
class CateController extends CommonController {   
    function info(){
        $info=array(
            'table'=>'tp_cate',
            'name'=>'Cate',
            'idLenth'=>'6',
            'idType'=>'char'
        );
        return $info;
    }

    public function index(){ 
        $info=$this->info();
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION['cateSearch']=$_POST['search'];
            }else {
                $_SESSION['cateSearch']='';
            }
        }
        $this->assign('search',$_SESSION['cateSearch']);    
        $map['catName']=array('like','%'.$_SESSION['cateSearch'].'%');
        if($_GET['pidCateId']){
            $map['pidCateId']=$_GET['pidCateId'];            
        }else{
            if(!$_SESSION['cateSearch']){
                $map['pidCateId']=000000;
            }           
        }
        $this->assign('pidCateId',$_GET['pidCateId']);
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));
        $this->display();
    }
    
    public function add(){
        $info=$this->info();
        $pidCateId=!empty($_GET['pidCateId']) ? $_GET['pidCateId'] : '000000'; 
        $this->assign("pidCateId",$pidCateId);
        $map=array('prodid'=>$_SESSION['prodid'],'pidCateId'=>$pidCateId,'isDelete'=>0);
        $count=M($info['table'])->where($map)->count()+1;
        $this->assign("count",$count);  
        $this -> assign("state", formSV("","state"));
        
        $this->display();        
    }    
    
    public function insert(){
        $info=$this->info();
        if($info['idType']=='int'){
            $this->dataIns($info['table'], $_POST);
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