<?php
namespace Tuocai\Controller;
class IndexController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $m=D('tp_ad');
        $where['prodid']=2;
        $pic=$m->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        
        $m=D('tc_prodservice');
        $where['istj']=1;
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data);
        
        $map['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
        $map['state']="发布";
        $m=M('tc_customer');
        $arr=$m->where($map)->order('utime desc')->select();
        $this->assign('arr',$arr);                
        
        $this->display();
    }
    
       
}