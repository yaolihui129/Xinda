<?php
namespace Record\Controller;

class FuncController extends CommonController{
    public function module(){
        //平台信息
        $where['product']=6;
        $where['deleted']='0';
        $branch=array(32,33,37,38,40);
        $where['id']=array('in',$branch);
        $data=M('branch')->where($where)->order('`order`')->select();
        $this->assign("data",$data);

        //模块信息
        $id=I('id',$data[0][id]);
        $this->assign("id",$id);
        $map=array('branch'=>$id,'deleted'=>'0');
        $module=M('module')->where($map)->order('path,`order`')->select();
        $this->assign("module",$module);

        $this->display();
    }

    function select($data,$name,$value){
        $html = '<select name="'.$name.'" class="form-control">';
        foreach($data as $v) {
            $selected = ($v['key']==$value) ? "selected" : "";
            $html .= '<option '.$selected.' value="'.$v['key'].'">'.$v['value'].'</option>';
        }
        $html .='<select>';
        return $html;
    }

    public function index(){
        $m=D('module');
        $arr=$m->find(I('id'));
        $this->assign("arr",$arr);
          
        $where=array('branch'=>$arr['branch'],'deleted'=>"0");
        $data=$m->where($where)->order('path,`order`')->select();
//        dump($data);
        $this->assign("data",$data);
        /* 实例化模型*/
        $m= D("tp_func");
        $map['module']=I('id');
        $map['deleted']='0';
        $func=$m->where($map)->order("sn")->select();
        $this->assign("func",$func);

        
        /* 添加*/
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);

        /*项目迭代*/
        $var['testgp']='YX';
        $map['deleted']='0';
        $pros=M('project')->where($map)->order("status,end desc")->limit(10)->select();

        foreach($pros as $v) {
            $data[]=array();
            $data['key']=$v['id'];
            $data['value']=$v['name'];

        }
dump($data);

        $this->display();
    }
  

    public function mod(){
        $m= D("tp_func");
        $func=$m->find(I('id'));
        $this->assign("func",$func);
        $data=$m->order("sn")->select();
        $this->assign("data",$data);      


        $this->display();
    }


}