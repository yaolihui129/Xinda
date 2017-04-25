<?php
namespace Admin\Controller;
class StaffController extends CommonController {
    public function index(){
        /* 接收参数*/
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        $this->assign('search',$search);
        $maxPageNum=10;
        
        $where['prodid']=$_SESSION['prodid'];
//         $where['type|credit|debit|desc']=array('like','%'.$search.'%');
        
        $data=M('tp_staff')->where($where)->page($page,$maxPageNum)->select();
        $this->assign('data',$data);
        
        
        $this->display();
    }
}