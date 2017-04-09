<?php
namespace Tuocai\Controller;
class ServicelistController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息              
        $where=array('prodid'=>C('PRODUCT'),'state'=>'正常'); 
        $arr=M('tc_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
        $map['state']='发布';
        if($_GET['cate']){
           $map['cate']=$_GET['cate'];
           $data=D('tc_prodservice')->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
        }else {
           $data=D('tc_prodservice')->where($map)->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
           ->order('utime desc')->limit(12)->select();
        }                   
        $this->assign('data',$data);                 
        $this->display();
    }
    
}