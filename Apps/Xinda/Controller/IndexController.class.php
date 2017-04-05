<?php
namespace Xinda\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find(6);
        $_SESSION['Xinda']=$data;
        $_SESSION['Xinda']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs(); 
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        //如果有$_GET['wxOpenId']就直接登录
        if($openid){
            $map=array('wxopenid'=>$openid);
            $m=D('xd_customer');
            $arr=$m->where($map)->select();            
            if($arr){//如果用户表有值，直接登录      
                $_SESSION['userid']   = $arr[0]['tpid'];
                $_SESSION['isCLogin'] = 'Xinda';
                if($arr[0]['tpid']==0){//如果绑定手机号
                    $_SESSION['realname'] = '未留手机';                   
                }else{//如果未绑定手机号
                    $_SESSION['uphone']   = getCusPhone($arr[0]['tpid']);
                    $_SESSION['realname'] = getCusName($arr[0]['tpid']);
                }                             
            }else{//如果用户表没有值，向用户表插入数据
                $_POST['wxopenid']=$_GET['wxOpenId'];
                $_POST['wxappid']=$appid;
                $_POST['adder']=$appid;
                $_POST['moder']=$appid;
                $_POST['ctime']=time();
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $lastId=$m->add();
                $arr=$m->where($map)->select();
                $_SESSION['userid']   = $arr[0]['tpid'];
                $_SESSION['isCLogin'] = 'Xinda';
                $_SESSION['realname'] = '未留手机';
            }
            
        }
//        //广告轮播图
//         $m=D('tp_ad');
//         $where['prodid']=6;
//         $pic=$m->where($where)->order('utime desc')->select();
//         $this->assign('pic',$pic);
        
        $m=D('xd_prodservice');
        $where['istj']=1;
        $where['state']='发布';
        $data=$m->where($where)
        ->field("id,mark,name,state,content,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data); 
        
        $this->display();
    }
    
    public function _empty(){
    
        $this->display('index');
    }
       
}