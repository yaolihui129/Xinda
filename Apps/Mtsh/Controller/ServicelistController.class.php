<?php
namespace Mtsh\Controller;
class ServicelistController extends WebInfoController {
    
    public function index(){

       $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
            
        $where=array('prodid'=>$_SESSION[$JC]['id']);           
        $m=D('mt_cate');
        $arr=$m->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);

        $m=D('tp_product');
        $map['state']='发布';
        if($_GET['cate']){
           $map['cate']=$_GET['cate'];
           $data=$m->where($map)
                ->field("productId,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
        }else {
           $data=$m->where($map)->field("productId,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->limit(12)->select();
        }
                   
        $this->assign('data',$data);
                  
        $this->display();
    }

}