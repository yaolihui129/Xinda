<?php
namespace Tpyjd\Controller;
class UserController extends WebInfoController {
    
    public function index(){
        $arr=M('usercrm')->select();
        $this->assign('arr',$arr);
        $this->assign("search",$_POST['search']);
        
        $where['FullName']=array('like','%'.$_POST['search'].'%');
        $data=M('user')->where($where)->select();
        
        if($data){
            $var['UserId']=$data[0]['userid'];
            $var['crmId']=$_POST['id'];
//             $var['mobile']=$_POST['mobile'];
            M('user')->save($var);
            $data=M('user')->where($where)->select();
        }
        $this->assign('data',$data);
        $this->display();
    }
    
}