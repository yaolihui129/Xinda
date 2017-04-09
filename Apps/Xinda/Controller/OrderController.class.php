<?php
namespace Xinda\Controller;
class OrderController extends WebInfoController {    
    public function index(){       
        getWebInfo(C('PRODUCT'));//获取网页信息     
        $appid  = $_GET['wxAppId'];
        $openid = $_GET['wxOpenId'];
        WebInfoController::weiXinLogin($appid, $openid);//微信公众号免登陆
        $where=array();
        $data=D('xd_order')->where($where)->select();
        $this->assign("data",$data);
        $this->display();
    }   
    public function insert(){
        /* 实例化模型*/
        $m=D('xd_order');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }   
    }
    
    public function mod(){
        $data=M('xd_order')->find($_GET['id']);
        $this -> assign("$data",$data);   
        $this -> assign("state", formselect($data['state']));      
        $this->display();
    }
    public function update(){
        $_POST['moder']=$_SESSION['realname'];        
        if (M('xd_order')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
 
}