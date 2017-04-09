<?php
namespace Xiuli\Controller;
class ServicelistController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息                             
        $where['prodid']=1;
        $where['state']='正常';
        $m=D('xl_cate');
        $arr=$m->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);

        $m=D('xl_prodservice');
        $map['state']='发布';
        if($_GET['cate']){
            $map['cate']=$_GET['cate'];               
            $data=$m->where($map)
            ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
            ->order('sn,id')->select();
        }else {
            $map['istj']=1;
            $data=$m->where($map)
            ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
            ->order('utime desc')->select();
        }
                   
            $this->assign('data',$data);
            $this->assign('cate',$_GET['cate']);
                  
        $this->display();
    }   
    
   
}