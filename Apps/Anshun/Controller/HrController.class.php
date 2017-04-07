<?php
namespace Anshun\Controller;
class HrController extends WebInfoController {
    public function _empty(){   
        $this->display('index');
    }
    public function index(){
        WebInfoController::getWebInfo();//获取页面信息
        $where=array('prodid'=>$this->getProdId(),'istuij'=>0,'state'=>'招聘中');
        $data=M('tp_hr')->where($where)->order('sn,id')->select();
        $this->assign('data',$data);    
        $this->display();
    }
 
    public function wodtuijian(){       
        $where=array('tuij'=>$_GET['phone']);              
        $data=M('tp_applicant')->where($where)->select();
        $this->assign('data',$data);
        $this->display();
    }
    
    
    public function tuijhr(){       
        WebInfoController::getWebInfo();//获取页面信息
        $_SESSION['Xiuli']['web']='临城秀丽广告-招聘';        
        $where=array('prodid'=>$this->getProdId(),'istuij'=>1,'state'=>'招聘中');
        $data=M('tp_hr')->where($where)->order('sn,id')->select();
        $this->assign('data',$data);    
        $this->display();
    }
    
    public  function baom(){        
        WebInfoController::getWebInfo();//获取页面信息
        $_SESSION['Xiuli']['web']='临城秀丽广告-招聘';   
        $arr=M('tp_hr')->find($_GET['id']);
        $this->assign('arr',$arr);        
        $this->display();         
    }
    
    public function tuij(){         
        WebInfoController::getWebInfo();//获取页面信息
        $_SESSION['Xiuli']['web']='临城秀丽广告-招聘';   
        $arr=M('tp_hr')->find($_GET['id']);
        $this->assign('arr',$arr);       
        $this->display();   
    }
    
    public function insert(){
        $m=D('tp_applicant');
        $_POST['state']='报名';
        $where=array(['phone']=>$_POST['phone'],['hrid']=>$_POST['hrid']);
        $date=$m->where($where)->select();
        if($date){
            $this->error("对不起！这个职位".$_POST['phone']."已经报过名了。");
        }else {
            $map=array(['tuij']=>$_POST['tuij'],['hrid']=>$_POST['hrid']);
            $c=$m->where($map)->count();
            if($c >=15){
                $this->error("对不起！这个职位您已经推荐超过15人了，留些机会给其他人吧");
            }else{
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $lastId=$m->add();
                if($lastId){
                    $this->success("报名成功");
                }else{
                    $this->error("报名失败");
                }
            }
        }
    
    }
    
    
    
    
}