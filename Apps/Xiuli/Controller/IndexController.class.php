<?php
namespace Xiuli\Controller;
class IndexController extends WebInfoController {   
    public function index(){        
        getWebInfo(C('PRODUCT'));//获取网页信息        
        $where=array('prodid'=>getProdId(C('PRODUCT')));//轮播图
        $pic=M('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        //实例化模型
        $m=M('xl_prodservice');      
        $map=array('istj'=>1,'state'=>'发布'); //推荐服务      
        $data=$m->where($map)->order('utime desc')->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")->select();
        $this->assign('data',$data); 
        
        $where=array('cate'=>34,'state'=>'发布');//发光字
        $data=$m->where($where)->order('utime desc')->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")->select();
        $this->assign('data1',$data);
        
        $where=array('cate'=>18,'state'=>'发布');//文印
        $data=$m->where($where)->order('utime desc')->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")->select();
        $this->assign('data2',$data);
    
        $this->display();       
    }
    
    
   
}