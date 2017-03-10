<?php
namespace Anshun\Controller;
use Think\Controller;
class CarController extends Controller {
    
    public function index(){
        /*实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(4);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    
        $this->display();
    }
    
    
    public function add(){
        
        $this->display();
    
    }
    
    public function insert(){
        /*实例化模型*/
        $db=D('car');
         
        $_POST['moder']=$_SESSION['realname'];            
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }
    
   
    
    public function mod(){
        /*实例化模型*/
        $m=D('car');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
    
       
    
        $this->display();
    }
    
    
    public function update(){
        /* 实例化模型*/
        $db=D('car');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    
    

    
    
    
}