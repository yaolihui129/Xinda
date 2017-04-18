<?php
namespace Admin\Controller;
class IndexController extends CommonController {
    public function index(){        
        $arr=M('product')
            ->field("id,name,desc,phone,tel,qq,qz,web,keywords,adress,url,record,version")
            ->find($_SESSION['prodid']);
        $this->assign('arr',$arr);

	     $this->display();
    }
    
    public function update(){

        $_POST['moder']=$_SESSION['realname'];
        if (D('product')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function calendar(){
        
        $this->display();
    }
    
}