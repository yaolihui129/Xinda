<?php
namespace Admin\Controller;
class CustomerController extends CommonController {
	public function index(){
	    $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
	    $this->assign('search',$search);	    
	    $maxPageNum=10;	    
	    $where['zt_tp_customer.prodid']=$_SESSION['prodid'];
	    $where['zt_tp_credit.realname|zt_tp_credit.phone']=array('like','%'.$search.'%');
	    $m=M('tp_customer');
	    $data=$m->where($where)
	    ->join('zt_tp_credit ON zt_tp_customer.creditid =zt_tp_credit.creditid')
	    ->page($page,$maxPageNum)->select();
        $this->assign('data',$data);

	    $this->display();
    }
    
   public function add(){

       $this->display();
   }

    public function insert(){
        $where=array('phone'=>$_POST['phone']);
        $m=D('tp_credit');
        $arr=$m->where($where)->find();
        if($arr){//检查征信表
            $m=D('tp_customer');
            $where=array('creditid'=>$arr['creditid'],'prodid'=>$_SESSION['prodid']);
            $cus=$m->where($where)->find();
            if($cus){//检查客户表
                $this->error("Ta已经是您的客户了，无需重复添加");
            }else {//向客户表插入数据
                $_POST['creditid']=$arr['creditid'];
                $_POST['prodid']=$_SESSION['prodid'];
                $_POST['adder']=$_SESSION['realname'];
                $_POST['moder']=$_SESSION['realname'];
                $_POST['ctime']=time();
                if(!$m->create()){
                    $this->error($m->getError());
                }
                if($m->add()){
                    $this->success("成功,Ta原来是XX的客户",U('index'));
                }else{
                    $this->error("失败");
                }
            }
        }else {//向征信表插入数据
            do {//如果该ID在库中存在，则重新获取
                $id=getRandCode(9);
                $arr=$m->find($id);
            } while ($arr);
            $_POST['creditid']=$id;
            $_POST['realname']=$_POST['name'];
            $_POST['password']=md5('123456');
            $_POST['adder']=$_SESSION['realname'];
            $_POST['moder']=$_SESSION['realname'];
            $_POST['ctime']=time();
            $m->create();
            $m->add();
            $arr=$m->where($where)->find();
            //向客户表插入数据
            $m=D('tp_customer');
            $_POST['creditid']=$arr['creditid'];
            $_POST['prodid']=$_SESSION['prodid'];
            $_POST['adder']=$_SESSION['realname'];
            $_POST['moder']=$_SESSION['realname'];
            $_POST['ctime']=time();
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){
                $this->success("成功，新用户",U('index'));
            }else{
                $this->error("失败");
            }        
        }
    }
    
    public function mod(){
        $arr=D('tp_customer')->find($_GET[id]);
        $this->assign('arr',$arr);      

        $this->display();
    }

    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_customer')->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
     
    public function img(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     9145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =  './Upload/'.$_SESSION['qz'];// 设置附件上传目录
        $upload->savePath  = '/Customer/'; // 设置附件上传目录
    
        $info  =   $upload->upload();

        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            /* 实例化模型*/
            $db=D('tp_customer');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);               
                $image->thumb(245, 160)->save('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
    }

}