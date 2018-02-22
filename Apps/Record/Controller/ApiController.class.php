<?php
/**
 * Created by PhpStorm.
 * User: yaolihui
 * Date: 2018/2/11
 * Time: 10:46
 */

namespace Record\Controller;
class ApiController extends EmptyController {
    public function index(){
        //定义可以查的平台
        $branch=['全部','保险服务','安鑫保','车险APP','易鑫车服','微信','第三方'];
        //接收传递参数
        $_SESSION['branch']=I('branch');
        $search=trim(I('search'));
//        dump($_POST);
        $this->assign('branch',$branch);
        $this->assign('search',$search);
        if($_SESSION['branch']=='全部'){
            $_SESSION['branch']='';
        }else{
            if($_SESSION['branch']){
                $where['branch']=$_SESSION['branch'];
            }
        }
        $where['client|apiName|adress|author']=array('like','%'.$search.'%');
        $where['deleted']='0';
        $m=M("tp_apitest");
        $data=$m->where($where)->order('branch,adress')->select();
        $this->assign('data',$data);
        $count=$m->where($where)->count();
        $this->assign('count',$count);

        $this->display();
    }


    public function details(){
        $id=I(id);
        $data=M("tp_apitest")->find($id);
        $this->assign('data',$data);

        $where=array('api'=>$id,'deleted'=>'0');
        $version=M('tp_apiversion')->where($where)->order('atime desc')->select();
        $this->assign('version',$version);

        $parameter=M('tp_api_parameter')->where($where)->order('sn,id')->select();
        $this->assign('parameter',$parameter);

        $scene=M('tp_api_scene')->where($where)->order('sn,id')->select();
        $this->assign('scene',$scene);
//        dump($scene);

        $this->display();
    }

}