<?php
namespace Anshun\Controller;
class UsecarController extends WebInfoController {
    public function index(){       
        getWebInfo(C('PRODUCT'));//获取网页信息      
        $where=array("type"=>"usecar","state"=>"正常");
        $data=M('dict')->where($where)->order('k')->select();
        $this->assign('data',$data);
        $type=!empty($_GET['type']) ? $_GET['type'] : 6;
        $this->assign('type',$type);
        $where=array("type"=>$type);
        $arr=M('as_usecar')->where($where)->order('utime desc')->select();
        $this->assign('arr',$arr);        
        $this->display();
    }
}