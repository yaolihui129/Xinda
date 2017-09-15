<?php
namespace Admin\Controller;
class IndexController extends CommonController {
    function info(){
        $info=array(
            'table'=>'product',
            'name'=>'Product',
            'idLenth'=>'6',
            'idType'=>'int'
        );
        return $info;
    }
    public function index(){  
        $info=$this->info();
        $arr=M($info['table'])
            ->field("id,name,desc,phone,tel,qq,qz,web,keywords,adress,url,record,version")
            ->find($_SESSION['prodid']);
        $this->assign('arr',$arr);
	     $this->display();
    }
    
    public function update(){//更新
        $info=$this->info();
        $this->dataUpdate($info['table'], $info['name'], $_POST);
    }
    
    public function calendar(){
        $info=$this->info();
        
        $this->display();
    }
    
}