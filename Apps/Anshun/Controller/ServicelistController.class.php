<?php
namespace Anshun\Controller;
class ServicelistController extends WebInfoController {
    public function index(){          
        getWebInfo(C('PRODUCT'));//获取网页信息      
        $where=array('prodid'=>C('PRODUCT'),'state'=>'正常');
        $arr=M('as_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
        $m=D('as_prodservice');
        if($_GET['cate']){           
           $map=array('state'=>'发布','cate'=>$_GET['cate']);
           $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('sn')->select();
        }else {
           $data=$m->where(array('state'=>'发布'))->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->limit(12)->select();
        }
        $this->assign('data',$data);
        $this->assign('cate',$_GET['cate']);                  
        $this->display();
    }  
}