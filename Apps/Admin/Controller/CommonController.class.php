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
    //数据查询
    function dataChaxun($table,$savePath,$map,$maxPageNum=10,$p=1){
        $m=M($table);
        $map['prodid']=$_SESSION['prodid'];
        $map['isDelete']=0;
        $_SESSION[$savePath.'Page']=$p;
        $data=$m->where($map)->order('sn desc,utime desc')->page($_SESSION[$savePath.'Page'],$maxPageNum)->select();
        $this->assign('data',$data);
        $count      = $m->where($map)->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,$maxPageNum);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
        
        
    }
    
    //数据写入
    public function dataInsert($table,$idLength,$savePath,$data,$img='img',$idName='id',$url=''){
        $_POST=$data;
        $m=D($table);
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode($idLength);
            $arr=$m->find($id);
        } while ($arr);
        $_POST[$idName]=$id;
        $_POST['adder']=$_SESSION['realname'];
        $_POST['ctime']=time();
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/'.$savePath.'/'; // 设置附件上传目录
        $info  =   $upload->upload();
        
        if(!$info) {// 上传错误提示错误信息或没有上传图片
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){
                $this->success("成功",U('index',$url));
            }else{
                $this->error('失败');
            }
        }else{// 上传成功 获取上传文件信息
            $_POST[$img]=getQz($_SESSION['prodid']).$info[$img]['savepath'].$info[$img]['savename'];
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){//等比例缩放
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info[$img]['savepath'].$info[$img]['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info[$img]['savepath'].$info[$img]['savename']);
                $this->success("成功",U('index',$url));
            }else{
                $this->error('失败');
            }
        }
        
    }
    
    function dataIns($table,$data,$savePath,$img='img',$idName='id',$url=''){
        $_POST=$data;
        $m=D($table);
        $_POST['adder']=$_SESSION['realname'];
        $_POST['ctime']=time();
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/'.$savePath.'/'; // 设置附件上传目录
        $info  =   $upload->upload();
        
        if(!$info) {// 上传错误提示错误信息或没有上传图片
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){
                $this->success("成功",U('index',$url));
            }else{
                $this->error('失败');
            }
        }else{// 上传成功 获取上传文件信息
            $_POST[$img]=getQz($_SESSION['prodid']).$info[$img]['savepath'].$info[$img]['savename'];
            if(!$m->create()){
                $this->error($m->getError());
            }
            if($m->add()){//等比例缩放
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info[$img]['savepath'].$info[$img]['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info[$img]['savepath'].$info[$img]['savename']);
                $this->success("成功",U('index',$url));
            }else{
                $this->error('失败');
            }
        }
        
    }
    
    //数据修改
    public function dataUpdate($table,$savePath,$data,$img='img',$url=''){
        $_POST=$data;
        $_POST['moder']=$_SESSION['realname'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/'.$savePath.'/'; // 设置附件上传目录
        $info  =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息或没有上传图片
            if (D($table)->save($_POST)){
                $this->success("修改成功！",U('index',$url));
            }else{
                $this->error("失败");
            }
        }else {
            $_POST[$img]=getQz($_SESSION['prodid']).$info[$img]['savepath'].$info[$img]['savename'];
            if (D($table)->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info[$img]['savepath'].$info[$img]['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info[$img]['savepath'].$info[$img]['savename']);
                $this->success("修改成功！",U('index',$url));
            }else{
                $this->error("修改失败！");
            }
        }
    
    }
    

    //物理删除
    public function shanChu($table,$id,$idName='id'){
        $count =M($table)->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
    //逻辑删除
    function ljShanchu($table,$id,$idName='id'){
        $_GET['id']=$id;
        $_GET['isDelete']=1;
        if (D($table)->save($_GET)){
            $this->success("删除成功！");
        }else{
            $this->error("删除失败！");
        }
    }
    
    //排序
    public function paiXu($table,$arr){
        $db = D($table);
        $num = 0;
        foreach($arr['sn'] as $id => $sn) {
            $num += $db->save(array('id'=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!",$url); 
        }else{
            $this->error("排序失败...");
        }
    }
    
    //发布
    public function Release($table,$id,$state,$idName='id'){
        $arr[$idName]=$id;
        $arr['moder']=$_SESSION['realname'];
        if ($state=='5'){
            $arr['state']="1";
            if (D($table)->save($arr)){
                $this->success("下线成功！");
            }else{
                $this->error("失败！");
            }
        }else{
            $arr['state']="5";
            if (D($table)->save($arr)){
                $this->success("发布成功！");
            }else{
                $this->error("失败！");
            }
        }
        
    }





}
