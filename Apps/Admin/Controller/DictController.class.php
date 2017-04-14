<?php
namespace Admin\Controller;
class DictController extends CommonController{
    public function index(){              
         /* 实例化模型*/
    	 $m=M('tp_dict');
         $arr=$m->field('type',false)->group('type')->select();
         $this->assign('arr',$arr);       
         if ($_GET['type']){//如果有URL参数，从参数取值
             $type=$_GET['type'];
         }elseif ($_SESSION['dictType']){//没有参数，从$_SESSION中取值
             $type=$_SESSION['dictType'];
         }else {//如果都没有，给默认值state
             $type="state";
         }
         $_SESSION['dictType']=$type;
         $this->assign('type',$type);

    	 $data=$m->field('dictid,k,v,type,state,moder,utime',false)
    	 ->where(array('type'=>$type))->order('k')->select();
	     $this->assign('data',$data);

	     $this->display();
    }

    public function add(){
        $type= $_SESSION['dictType'];
        $this->assign("type",$type);
        $where = array("type"=>$type);
        $count=M('tp_dict')->where($where)->count()+1;
        $this->assign("count",$count);
        $this -> assign("state", formSV("","state"));

        $this->display();
    }

    public function insert(){       
        $m=D('tp_dict');   
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(40);
            $arr=$m->find($id);
        } while ($arr);
        $_POST['dictId']=$id;                 
        $_POST['moder']=$_SESSION['realname'];       
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
           $this->success("成功",U('index'));
        }else{
            $this->error("失败");
        }
    }

    public function mod(){
        
        $data=M('tp_dict')->find($_GET['id']);
        $this->assign('data',$data);
        $this->assign("state", formSV($data['state'],"state"));

        $this->display();
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_dict')->save($_POST)){
            $this->success("成功!",U('index'));
        }else{
            $this->error("失败!");
        }
    }


    public function del(){
        $count =M('tp_dict')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}