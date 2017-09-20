<?php
namespace Xinda\Controller;
use Think\Controller;
class WebInfoController extends Controller {        
    public function _empty(){//错误网页重新定向到首页
        $this->redirect(C(PRODUCT).'/Index');
    } 
    
    public function changeMuban($muban){
        if($muban){
            $_SESSION[C(PRODUCT)]['muban']=$muban;
        }        
    }
    
    //数据查询
    function dataChaxun($table,$savePath,$map,$maxPageNum=10,$p=1){
        $m=M($table);
        $map['prodid']=C(PRODID);
        $map['state']=5;
        $map['isDelete']=0;
        $_SESSION[$savePath.'Page']=$p;
        $data=$m->where($map)->order('sn desc,utime desc')->page($_SESSION[$savePath.'Page'],$maxPageNum)->select();
        $this->assign('data',$data);
        $count      = $m->where($map)->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,$maxPageNum);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
    
    
    }
    function details($table,$id){
        $this->assign('arr',M($table)->find($id));
        self::clicknum($table, $id);
    }
    
    function clicknum($table,$id){
        if(!$_SESSION[$table][$id]){
            $_SESSION[$table][$id]=1;
            $db=D($table);
            $arr=$db->field('id,clicknum')->find($id);
            $data['clicknum']=$arr['clicknum']+1;
            $data[id]=$id;
            $db->save($data);
        }
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
    }
    
    
   function weiXinLogin($appid,$openid){//微信公众账号免登陆
       if($_SESSION[isCLogin]==C('PRODUCT')){//未登录
       }else {
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
    
    
    
}