<?php
namespace Admin\Controller;
class PolicyController extends CommonController {
    public function index(){
        $m=M('tp_policy');
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION['PolicySearch']=$_POST['search'];
            }else {
                $_SESSION['PolicySearch']='';
            }
            $this->assign('search',$_SESSION['PolicySearch']);
            $map['title']=array('like','%'.$_SESSION['PolicySearch'].'%');
        }
        
        $map['prodid']=$_SESSION['prodid'];
        if ($_GET['p']){//储存当前翻页
            $_SESSION['PolicyPage']=$_GET['p'];
        }
        $maxPageNum=3;
        $data=$m->where($map)->order('utime desc')->page($_SESSION['PolicyPage'],$maxPageNum)->select();
        $this->assign('data',$data);
        $count      = $m->where($map)->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,$maxPageNum);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
    
        $this->display();
    }
    public function add(){
        $count=M('tp_policy')->count()+1;
        $this->assign("count",$count);
        $this->display();
    }
    
    public function insert(){
        $m=D('tp_policy');
        
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(4);
            $arr=$m->find($id);
        } while ($arr);
        $_POST['id']=$id;
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/Policy/'; // 设置附件上传目录
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
    
    public function mod(){
        $arr=M('tp_policy')->find($_GET[id]);
        $this->assign('arr',$arr);
         
        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/Policy/'; // 设置附件上传目录
        $info  =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息或没有上传图片
            if (D('tp_policy')->save($_POST)){
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }else {
            $_POST['img']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
            if (D('tp_policy')->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }
    }
    
    public function order(){
        $db = D('tp_activity');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
    
        }else{
            $this->error("排序失败...");
        }
    }
    
    public function fabu(){
        $arr['id']=$_GET['id'];
        $arr['moder']=$_SESSION['realname'];
        if ($_GET['state']=='5'){
            $arr['state']="1";
            if (D('tp_policy')->save($arr)){
                $this->success("下线成功！");
            }else{
                $this->error("失败！");
            }
        }else{
            $arr['state']="5";
            if (D('tp_policy')->save($arr)){
                $this->success("发布成功！");
            }else{
                $this->error("失败！");
            }
        }
    
    }
    
    public function del(){
        $count =M('tp_policy')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}