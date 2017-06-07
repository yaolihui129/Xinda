<?php
namespace TestAdmin\Controller;
class ProsysController extends CommonController {
    
    public function insert(){
        $m=D('tp_prosys');
        $_GET['moder']=$_SESSION['realname'];      
        if(!$m->create($_GET)){
            $this->error($m->getError());
        }
        if($m->add($_GET)){        
           $this->success("添加成功");        
        }else{
            $this->error("添加失败");
        }

    }
    public function mod(){
        $m=M('branch');
        $sys=$m->find(I('id'));
        $this->assign('sys',$sys);
    
        $where['product']=$sys['product'];
        $data=$m->where($where)->select();
        $this->assign('data',$data);
    
        $where['proid']=I('proid');
        $this->assign('w',$where);
    
        $this->display();
    }
    

    
 
}