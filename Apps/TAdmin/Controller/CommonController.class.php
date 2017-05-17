<?php
namespace TAdmin\Controller;
use Think\Controller;
class CommonController extends Controller {
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['isLogin']) || $_SESSION['realname']==''){
            $this->redirect('TAdmin/Login/index');
        }
    }
    
    public function Porder(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += D($_POST['table'])->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
        }else{
            $this->error("排序失败...");
        }
    }

}