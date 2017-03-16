<?php
namespace Anshun\Controller;
use Think\Controller;
class UsecarController extends Controller {
    public function index(){
         $m=D('product');
       $data=$m->field('web,adress,keywords,desc,phone,tel,qq,url,record,path,img')->find(4);
       $_SESSION['Anshun']=$data;
       $_SESSION['Anshun']['img']=$data['path'].$data['img'];
       $_SESSION['ip']=get_client_ip();
       $_SESSION['browser']=GetBrowser();
       $_SESSION['os']=GetOs();     

        $m=D('dict');
        $where=array("type"=>"usecar","state"=>"正常");
        $data=$m->where($where)->order('k')->select();
        $this->assign('data',$data);

        $m=D('as_usecar');
        $type=!empty($_GET['type']) ? $_GET['type'] : 6;
        $where=array("type"=>$type);
        $arr=$m->where($where)->order('utime desc')->select();
        $this->assign('arr',$arr);
        $this->assign('w',$where);

        $this->display();
    }




}