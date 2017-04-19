<?php
namespace Mtsh\Controller;
class IndexController extends WebInfoController {

    public function index(){        
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
        $where=array('prodid'=>$_SESSION[$JC]['id']);
        $pic=D('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);

        $map=array('prodid'=>$_SESSION[$JC]['id'],'istj'=>1,'state'=>5);
        $data=D('tp_product')->where($map)
        ->field("productId,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data);
        
        $this->display();
        
    }
    
    
        
}