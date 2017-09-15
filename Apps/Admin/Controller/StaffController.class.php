<?php
namespace Admin\Controller;
class StaffController extends CommonController {
    function info(){
        $info=array(
            'table'=>'tp_staff',
            'table1'=>'tp_dept',
            'table2'=>'tp_credit',
            'name'=>'Staff',
            'idLenth'=>'6',
            'idType'=>'int'
        );
        return $info;
    }
    
    public function index(){
        $info=$this->info();
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION[$info['name'].'Search']=$_POST['search'];
            }else {
                $_SESSION[$info['name'].'Search']='';
            }
            $this->assign('search',$_SESSION[$info['name'].'Search']);          
            $map['username']=array('like','%'.$_SESSION[$info['name'].'Search'].'%');
        }
        $map['prodid']=$_SESSION['prodid'];
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));       
        $this->display();
    }
    
    
    
    public function add(){
        $this -> assign("dept",deptselect("","dept"));
        $this->display();
    }
    
    
    public function insert(){
        $where=array('phone'=>$_POST['username']);
        $m=D('tp_credit');
        $arr=$m->where($where)->find();
        if($arr){//检查征信表
            $m=D('tp_staff');
            $_POST['moder']=$_SESSION['realname'];
            $_POST['prodid']=$_SESSION['prodid'];
            $upload = new \Think\Upload(); //处理上传图片
            $upload->maxSize  =     7145728 ;// 设置附件上传大小
            $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
            $upload->rootPath =     './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
            $upload->savePath =     '/Staff/'; // 设置附件上传目录
            $info  =   $upload->upload();           
            if(!$info) {// 上传错误提示错误信息或没有上传图片
                if(!$m->create()){
                    $this->error($m->getError());
                }
                if($m->add()){
                    $this->success("成功",U('index'));
                }else{
                    $this->error('失败');
                }
            }else{// 上传成功 获取上传文件信息
                $_POST['img']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
                if(!$m->create()){
                    $this->error($m->getError());
                }
                if($m->add()){//等比例缩放
                    $image = new \Think\Image();
                    $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                    $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                    $this->success("成功",U('index'));
                }else{
                    $this->error('失败');
                }
            }
        }else {//向征信表插入数据
            do {//如果该ID在库中存在，则重新获取
                $id=getRandCode(9);
                $arr=$m->find($id);
            } while ($arr);
            $_POST['creditid']=$id;
            $_POST['phone']=$_POST['username'];
            $_POST['realname']=$_POST['realname'];
            $_POST['password']=md5('123456');
            $_POST['adder']=$_SESSION['realname'];
            $_POST['moder']=$_SESSION['realname'];
            $_POST['ctime']=time();
            $m->create();
            $m->add();
            $arr=$m->where($where)->find();
            //向员工表插入数据
            $m=D('tp_staff');
            $_POST['moder']=$_SESSION['realname'];
            $_POST['prodid']=$_SESSION['prodid'];
            $upload = new \Think\Upload(); //处理上传图片
            $upload->maxSize  =     7145728 ;// 设置附件上传大小
            $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
            $upload->rootPath =     './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
            $upload->savePath =     '/Staff/'; // 设置附件上传目录
            $info  =   $upload->upload();
            if(!$info) {// 上传错误提示错误信息或没有上传图片
                if(!$m->create()){
                    $this->error($m->getError());
                }
                if($m->add()){
                    $this->success("成功",U('index'));
                }else{
                    $this->error('失败');
                }
            }else{// 上传成功 获取上传文件信息
                $_POST['img']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
                if(!$m->create()){
                    $this->error($m->getError());
                }
                if($m->add()){//等比例缩放
                    $image = new \Think\Image();
                    $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                    $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                    $this->success("成功",U('index'));
                }else{
                    $this->error('失败');
                }
            }
            
        }
        
        
        
        
    }
    
    public function mod(){
        $arr=M('tp_staff')->find($_GET[id]);
        $this->assign('arr',$arr);
        
        $this -> assign("dept", deptselect($arr['dept'],"dept"));
    
        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];      
        $upload = new \Think\Upload();//处理上传图片
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =     './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath =     '/Staff/'; // 设置附件上传目录
        $info  =   $upload->upload();//上传图片
        if(!$info) {// 上传错误提示错误信息
            if (D('tp_staff')->save($_POST)){
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }else{
            $_POST['img']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
            if (D('tp_staff')->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }
    }
    public function dept(){
        $dept=I('id');
        $info=$this->info();       
        $this->assign('dept',$dept);
        $where=array('dept'=>$dept,'isDelete'=>0);
        $data=M($info['table'])->where($where)->select();
        $this->assign('data',$data);
        $this->display();
    }
    
    
    
}