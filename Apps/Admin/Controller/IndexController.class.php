<?php
namespace Admin\Controller;
class IndexController extends CommonController {
    public function index(){
        
        $arr=M('product')->field("id,name,desc,phone,tel,qq,qz,web,keywords,adress,url,record,version")->find($_SESSION['prodid']);
        $this->assign('arr',$arr);
//         dump($data);

	     $this->display();
    }
    
    public function update(){
        $db=D('product');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
   

    
    public function test(){     
        $data=M('product')->find($_SESSION['prodid']);        
        $this->assign('arr',$data);
        dump($data);
        $this->display();
    }


}