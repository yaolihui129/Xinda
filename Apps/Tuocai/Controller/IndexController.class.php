<?php
namespace Tuocai\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息
       
        if($_SESSION[isCLogin]==C('PRODUCT')){//未登录
             
        }else {
            if($_GET['wxOpenId']){//微信免登陆
                $this->weiXinLogin($_GET['wxAppId'],$_GET['wxOpenId']);
            }
        }
        
        $where=array('prodid'=>C('PRODID'));
        $pic=D('tp_ad')->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic); 
        //推荐
        $m=M('tp_product');
        $where=array('prodid'=>C('PRODID'),'istj'=>1,'state'=>5);
        $data=$m->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data',$data);
        //学前少儿
        $where=array('prodid'=>C('PRODID'),'cateId'=>'xQ0yS0','state'=>5);
        $data1=$m->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data1',$data1);
        //小学课程
        $where=array('prodid'=>C('PRODID'),'cateId'=>'Gz4i45','state'=>5);
        $data2=$m->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data2',$data2);
        //中学课程
        $where=array('prodid'=>C('PRODID'),'cateId'=>'ZsuP8M','state'=>5);
        $data3=$m->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data3',$data3);
        //作业托管
        $where=array('prodid'=>C('PRODID'),'cateId'=>'UgTQqC','state'=>5);
        $data4=$m->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data4',$data4);
        //兴趣拓展
        $where=array('prodid'=>C('PRODID'),'cateId'=>'BDSkvu','state'=>5);
        $data5=$m->where($where)->order('utime desc')->field("id,name,money,smoney,num,img,utime")->select();
        $this->assign('data5',$data5);
        
//         $map['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
//         $map['state']="发布";
//         $m=M('tp_customer');
//         $arr=$m->where($map)->order('utime desc')->select();
//         $this->assign('arr',$arr);                
        
        $this->display();
    }
    
       
}