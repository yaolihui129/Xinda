<?php
namespace Anshun\Controller;
class CarController extends WebInfoController {
    public function index(){       
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息      
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
        $where=array('vim'=>$_POST['vim']);
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
        $arr=D('car')->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->display();
    }  
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (M('car')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
}