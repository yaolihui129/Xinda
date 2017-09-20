<?php
namespace Admin\Controller;
class GuigeController extends CommonController {
    function info(){
        $info=array(
            'table'=>'tp_norms',
            'table1'=>'tp_product',
            'name'=>'Norms',
            'idLenth'=>'15',
            'idType'=>'char'
        );
        return $info;
    }   
    public function index(){
        $info=$this->info();
        $product=I('product');
        if($product){
            $_SESSION['product']=$product;
        }        
        $arr=M($info['table1'])->field('name,guig1,guig2,guig3,guig4,guig5,img')->find($_SESSION['product']);
        $this->assign('arr',$arr);
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION[$info['name'].'Search']=$_POST['search'];
            }else {
                $_SESSION[$info['name'].'Search']='';
            }
            $this->assign('search',$_SESSION[$info['name'].'Search']);
            $map['norm1|norm2|norm3|norm4|norm5|norm6']=array('like','%'.$_SESSION[$info['name'].'Search'].'%');
        }  
        $map['product']=$_SESSION['product'];
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));
        $this->display();       
    }

    public function add(){
        $info=$this->info();
        $product=$_SESSION['product'];
        $where['product']=$product;
        $where['isDelete']=0;
        $count=M($info['table'])->where($where)->count()+1;
        $this->assign("count",$count);
        $guige=M($info['table1'])->field('name,guig1,guig2,guig3,guig4,guig5')->find($product);
        $this->assign('guige',$guige);
        $this->display();
    }
    
    public function copy(){
        $info=$this->info();
        $arr=M($info['table'])->find($_GET[id]);
        $this->assign('arr',$arr);
        $product=$_SESSION['product'];
        $where['product']=$product;
        $where['isDelete']=0;
        $count=M($info['table'])->where($where)->count()+1;
        $this->assign("count",$count);
        $guige=M($info['table1'])->field('name,guig1,guig2,guig3,guig4,guig5')->find($product);
        $this->assign('guige',$guige);
        $this->display();
    }
    
    public function insert(){
        $info=$this->info();
        $url=array('product'=>$_SESSION['product']);
        $this->dataInsert($info['table'], $info['idLenth'], $info['name'], $_POST,$url);
    }
    
    public function mod(){
        $info=$this->info();
        $arr=M($info['table'])->find($_GET[id]);
        $this->assign('arr',$arr);
        $guige=M($info['table1'])->field('name,guig1,guig2,guig3,guig4,guig5')->find($_SESSION['product']);
        $this->assign('guige',$guige);
        $this->display();
    }
    
    public function update(){//更新
        $info=$this->info();
        $url=array('product'=>$_SESSION['product']);
        $this->dataUpdate($info['table'], $info['name'], $_POST,$url);
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