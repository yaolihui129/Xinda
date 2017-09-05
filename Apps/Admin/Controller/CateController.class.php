<?php
namespace Admin\Controller;
class CateController extends CommonController {   
    public function index(){        
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
        $this->dataChaxun($this->getTable(), $this->getName(), $map,C('maxPageNum'),I('p'));
        $this->display();
    }
    
    public function add(){       
        $pidCateId=!empty($_GET['pidCateId']) ? $_GET['pidCateId'] : '000000'; 
        $this->assign("pidCateId",$pidCateId);
        $map=array('prodid'=>$_SESSION['prodid'],'pidCateId'=>$pidCateId,'isDelete'=>0);
        $count=M('tp_cate')->where($map)->count()+1;
        $this->assign("count",$count);  
        $this -> assign("state", formSV("","state"));
        
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
        return 'tp_cate';
    }
    function getName(){
        return 'Cate';
    }

}