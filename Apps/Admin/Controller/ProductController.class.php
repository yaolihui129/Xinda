<?php
namespace Admin\Controller;
class ProductController extends CommonController {
    public function index(){      
        $where=array('prodid'=>$_SESSION['prodid'],'state'=>1);
        $arr=M('tp_cate')->where($where)->order('sn')->select();
        $this->assign('arr',$arr);
        $_SESSION['prodCate']=!empty($_GET['cate']) ? $_GET['cate'] : $arr['0']['cateid'];
        $where=array('cate'=>$_SESSION['prodCate']);
        $data=D('tp_product')->where($where)->order('sn')->select();
        $this->assign('data',$data);           
        
        $this->display();
    }
    
    
    public function add(){
        /*实例化模型*/
        $m=D($_SESSION['db'].'cate');
        $arr=$m->find($_GET['cate']);
        if ($arr){
            $where['pid']=$arr['pid'];             
        }else {
            $where['pid']=0;
        }      
        $where['prodid']=$_SESSION['prodid'];
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);
        
        
        /*实例化模型*/
        $m=D('tp_product');
        $map['cate']=$_GET['cate'];        
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);
        
        $data=$m->where($map)->order('sn')->select();
        $this->assign('data',$data);

        $this->assign("cate",$_GET['cate']);
        $this->assign("desc",PublicController::editor("content",""));
        
        $this->display();
    
    } 
    
    
    public function insert(){
    
        $m=D('tp_product');
         
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
    
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }
    
    public function order(){
        /* 实例化模型*/
        $db = D('tp_product');
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
    
    public function mod(){
        /* 实例化模型*/
        $m=D('tp_product');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->assign("cate",$arr['cate']);
        $this->assign("desc",PublicController::editor("content",$arr['content']));
        $m=D($_SESSION['db'].'cate');
        $arr=$m->find($arr['cate']);
        
      
        $m=D($_SESSION['db'].'prodservice');
        $where['cate']=$arr['id'];
        $where['prodid']=$_SESSION['prodid'];
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
            
        $this->display();
    }
    
    
    public function update(){
        /* 实例化模型*/
        $db=M('tp_product');
//         dump($_POST);
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            dump($_POST);
            $this->error("修改失败！");
        }
    }
    
    public function fabu(){
        /* 接收参数*/
        $arr['id']=$_GET['id'];
        /* 实例化模型*/
        $db=D($_SESSION['db'].'prodservice');
        if ($_GET['state']=='发布'){
            $arr['state']="下线";
        }else{
            $arr['state']="发布";
        }
        
        $arr['moder']=$_SESSION['realname'];
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }
    
    public function istj(){
        /* 接收参数*/
        $arr['id']=$_GET['id'];
        /* 实例化模型*/
        $db=D('tp_product');
        if ($_GET['istj']==1){
            $arr['istj']=0;
        }else{
            $arr['istj']=1;
        }
        
        $arr['moder']=$_SESSION['realname'];
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }
    
    public function search(){
        /* 接收参数*/
        $search=$_POST['search'];
        $map['name|mark|content|money|smoney']=array('like','%'.$search.'%');
        /* 实例化模型*/
        $m=D('tp_product');
        $arr=$m->where($map)->order('utime desc')->select();
        $this->assign('data',$arr);
        $search=array("search"=>$search);
        $this->assign('w',$search);
         
        $this->display('index');
         
    }
    
    public function img(){
        /* 实例化模型*/
        $m=D('tp_product');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->assign("cate",$arr['cate']);
        
        $m=D($_SESSION['db'].'cate');
        $arr=$m->find($arr['cate']);        
         
        $m=D($_SESSION['db'].'prodservice');
        $where['cate']=$arr['id'];
        $where['prodid']=$_SESSION['prodid'];
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
    
        $this->display();
    }
    
    public function pic(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.$_SESSION['qz'].'/';// 设置附件上传目录
        $upload->savePath = '/Product/'; // 设置附件上传目录
    
        $info  =   $upload->upload();
    
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            /* 实例化模型*/
            $db=D($_SESSION['db'].'prodservice');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(800, 400)->save('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
    }
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('tp_product');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }
    
    
    
}