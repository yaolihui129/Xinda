<?php
namespace Admin\Controller;
class CommonController extends WebInfoController{
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['isLogin']) || $_SESSION['realname']==''){
            $this->redirect('Login/index');
        }
        $this->getMume();//获取菜单权限
        
    }

    public function del(){
        $count =M(I('table'))->delete(I('id'));
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    





}
