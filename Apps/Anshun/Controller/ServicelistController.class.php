<?php
namespace Anshun\Controller;
class ServicelistController extends WebInfoController {
    
    public function _empty(){   
        $this->display('index');
    }  
    public function index(){          
        WebInfoController::getWebInfo();//获取页面信息
        $where=array('prodid'=>$this->getProdId(),'state'=>'正常');
        $arr=M('as_cate')->where($where)->order('sn')->select();                        
        $this->assign('arr',$arr);
        $m=D('as_prodservice');
        $map['state']='发布';
        if($_GET['cate']){
           $map['cate']=$_GET['cate'];                
           $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('sn')->select();
        }else {
           $data=$m->where($map)->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->limit(12)->select();
        }
        $this->assign('data',$data);
        $this->assign('cate',$_GET['cate']);                  
        $this->display();
    }  
}