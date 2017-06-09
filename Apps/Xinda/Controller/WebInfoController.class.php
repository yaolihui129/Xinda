<?php
namespace Xinda\Controller;
use Think\Controller;
class WebInfoController extends Controller {        
    public function _empty(){//错误网页重新定向到首页
        $this->redirect(C(PRODUCT).'/Index');
    } 
    
 public function insert(){
        $m=D(I('table'));
        if (IS_GET){
            $_GET['adder']=$_SESSION['realname'];
            $_GET['moder']=$_SESSION['realname'];
            $_GET['createTime']=date("Y-m-d H:i:s",time());
            if(!$m->create($_GET)){
                $this->error($m->getError());
            }
            if($m->add($_GET)){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }else {
            $_POST['adder']=$_SESSION['realname'];
            $_POST['moder']=$_SESSION['realname'];
            $_POST['createTime']=date("Y-m-d H:i:s",time());
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }       
    }
    //修改
    public function update(){
        if (IS_GET){
            $_GET['moder']=$_SESSION['realname'];
            if (D(I('table'))->save($_GET)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
        }else {
            $_POST['moder']=$_SESSION['realname'];
            if (D(I('table'))->save($_POST)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            } 
        }
        $_POST['moder']=$_SESSION['realname'];
        if (D(I('table'))->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    
   function weiXinLogin($appid,$openid){//微信公众账号免登陆
       $map=array('wxopenid'=>$openid,'prodid'=>C(PRODID));
       $m=D('tp_customer');
       $arr=$m->where($map)->find();
            if($arr){//如果用户表有值，直接登录
                $_SESSION['userid']   = $arr['id'];
                $_SESSION['isCLogin'] = C(PRODUCT);
                $_POST['id']=$arr['id'];
                $_POST['lastLoginTime']=date("Y-m-d H:i:s",time());
                $_POST['lastLoginIP']=get_client_ip();
                $m->save($_POST);//更新最后登录信息
                if($arr['creditid']){       
                    $_SESSION['realname'] = getCreditName($arr['creditid']);
                }else{//如果未绑定手机号
                    $_SESSION['realname'] = '绑定手机';
                }
            }else{//如果用户表没有值，向用户表插入数据
                $_POST['wxopenid']=$openid;
                $_POST['wxappid']=$appid;
                $_POST['prodid']=C(PRODID);
                $_POST['adder']='微信免登';
                $_POST['moder']='微信免登';
                $_POST['ctime']=time();
                $_POST['lastLoginTime']=date("Y-m-d H:i:s",time());
                $_POST['lastLoginIP']=get_client_ip();
                $m->create();              
                $_SESSION['userid']   = $m->add();
                $_SESSION['isCLogin'] = C(PRODUCT);
                $_SESSION['realname'] = '绑定手机';
            }                  
    }
    
    
    
}