<?php
namespace Anshun\Controller;
class IndexController extends WebInfoController {    
    public function _empty(){    
        $this->display('index');
    }   
    public function index(){
        WebInfoController::getWebInfo();  //获取页面信息                        
        $where=array('prodid'=>$this->getProdId());
        $pic=M('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        $map=array('istj'=>1);
        $data=M('as_prodservice')->where($map)->order('utime desc')
            ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")           
            ->select();
        $this->assign('data',$data);
        $this->display();
   }
}