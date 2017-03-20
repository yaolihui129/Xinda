<?php
namespace TAdmin\Controller;
class WxreturnController extends CommonController {

    public function index(){
        /*实例化模型*/
        $m=D('wx_return');
        $data=$m->order('code')->select();
        $this->assign('data',$data);
     
        $this->display();
    }

    public function add(){
        
        /*实例化模型*/
        $m=D('wx_return');        
        $data=$m->order('code')->select();
        $this->assign('data',$data);              

        $this->display();

    }

    public function insert(){
        /* 实例化模型*/
        $m=D('wx_return');             
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
        /* 实例化模型*/
        $m=D('wx_return');
        $arr=$m->find($_GET[code]);
        $this->assign('arr',$arr);

        
        $data=$m->order('code')->select();
        $this->assign('data',$data);

        $this->display();
    }


    public function update(){
        /* 实例化模型*/
        $db=D('wx_return');        
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

   

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['code']) ? $_POST['code'] : $_GET['code'];
        /* 实例化模型*/
        $m=D('wx_return');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }

    }
    
    
    public function _empty(){
    
        $this->display('index');
    }

}