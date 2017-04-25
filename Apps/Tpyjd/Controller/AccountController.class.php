<?php
namespace Tpyjd\Controller;
class AccountController extends WebInfoController {
    public function index(){             
        if(IS_POST){
            if($_POST['search']){//储存当前查询信息
                $_SESSION['AccountSearch']=$_POST['search'];
            }else {//空查询时，清空$_SESSION['AccountSearch']
                $_SESSION['AccountSearch']='';
            }
        }              
        $this->assign('search',$_SESSION['AccountSearch']);       
        $where['AccountName|phone']=array('like','%'.$_SESSION['AccountSearch'].'%');      
        /* 实例化模型*/
        $m=M('account');
        if ($_GET['p']){//储存当前翻页
            $_SESSION['AccountPage']=$_GET['p'];
        }        
        $maxPageNum=25;//每页最多纪录数
        $data=$m->where($where)->page($_SESSION['AccountPage'],$maxPageNum)->select();
        $this->assign('data',$data); 
        $count      = $m->where($where)->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,$maxPageNum);// 实例化分页类 传入总记录数和每页显示的记录数       
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出     

        $this->display();
    }

    
    public function insert(){
        $m=D('account');
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(40);
            $arr=$m->find($id);
        } while ($arr);    
        $_POST['AccountId']=$id;
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
            $this->success("成功",U('index'));
        }else{
            $this->error("失败");
        }
    
    }
    
    public function mod(){
        $data=M("account")->find($_GET['id']);
        $this->assign("data",$data);
    
        $this->display();
    }
    
    public function update(){
        if (D('account')->save($_POST)){
            $this->success("成功！",U('index'));
        }else{
            $this->error("失败！");
        }
    }

    public function del(){
        if (M('account')->delete($_GET['id'])>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }    
    }
    
    //新增用户CRM
    function apiinsert(){
       $url=PublicController::getUrl();
       //封装接口地址
       $url=$url."/distributor.action";
       $cuserArr=array(
          "loginname"=>"ltytest@163.com",
          "name"=>"ltytest",
          "ename"=>"ltytest",
          "employeenum"=>"",
          "title"=>"test",
          "mobile"=>"13227185823",
          "qq"=>"",
          "wxzh"=>"",
          "email"=>"ltytest@163.com",
          "region"=>"huadong",
          "beizhu"=>"xinceng"
       );
      $cuserJson='['.json_encode($cuserArr).']';
      $insertArr=array(
          "serviceName"=>"insert",
          "objectApiName"=>"ccuser",
          "data"=>$cuserJson,
          "binding"=>$_SESSION['binding']
       );
       $insertJson=json_encode($insertArr);
       dump($insertArr);
        //发送新增客户请求
//        $res= httpPost($url, $insertJson);
      
       $this->ajaxReturn($res);
     }
    
       
}