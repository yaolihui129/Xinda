<?php
namespace Anshun\Controller;
use Think\Controller;
class CarController extends Controller {
    
    public function index(){
        /*实例化模型*/
        $m=D('product');
        $data=$m->field('web,adress,keywords,desc,phone,tel,qq,url,record,path,img')->find(4);
        $_SESSION['Anshun']=$data;
        $_SESSION['Anshun']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    
        $this->display();
    }
    
    
    public function add(){
        $plateno=$_GET['plateno'];
        if($plateno){
            $this->assign('plateno',$plateno);
            $this->display();
        }else {
            $this->error('请先查询车牌号信息');
        }
    }
    
    public function insert(){
        /*实例化模型*/
        $m=D('car');
        $where['vim']=$_POST['vim'];
        $arr=$m->where($where)->select();
        if($arr){
            $this->error('车辆识别码重复，请核实车辆来路');
        }else {
            $_POST['moder']=$_SESSION['realname'];
            if(!$m->create()){
                $this->error($m->getError());
            }
            $lastId=$m->add();
            if($lastId){
                $this->success("成功",U('Order'));
            }else{
                $this->error('失败');
            }
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