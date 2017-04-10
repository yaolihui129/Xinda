<?php
namespace Admin\Controller;
class IndexController extends CommonController {
    public function index(){
        /* 接收参数*/
        $prodid=!empty($_GET['id']) ? $_GET['id'] : $_SESSION['prodid'];
       
        $m=D('product');
        $data=$m->find($prodid);
        //重置SESSION
        $_SESSION['prodid']=$prodid;
        $_SESSION['qz']=$data['qz'];
        $_SESSION['db']=$data['db'];
        
        $p=date("Y-m-d",time());
        $this->assign("p",$p);
        
        $m=D('tc_date');
        $where['riqi']=array('egt',date("Y-m-d",time()));
        $arr=$m->where($where)->order('riqi,sn')->select();
        $this->assign('arr',$arr);


	     $this->display();
    }
    
    
    
    public function search(){
        /* 接收参数*/
         
        $map['riqi']=$_POST['riqi'];
    
        /* 实例化模型*/
        $m=D('dict');
        $where['type']="sktime";
        $where['state']="正常";
        $data=$m->field('k,v')->where($where)->select();
        $m=M('date');
        $arr=$m->where($map)->order('sn')->select();
        if(!$arr){
            foreach ($data as $d){
                $_POST['xingqi']=wk($_POST['riqi']);
                $_POST['sn']=$d['k'];
                $_POST['sktime']=$d['v'];
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $m->add();
            }
            
        }
        $map['riqi']=array('egt',$_POST['riqi']);
        $arr=$m->where($map)->order('riqi,sn')->select();
        $this->assign('arr',$arr);
        $where=$_POST['riqi'];
        $this->assign('p',$where);
    
         
        $this->display('index');
    
    
    }
    
    public function test(){

        $this->getMume();//获取菜单权限
        
        
        $this->display();
    }


}