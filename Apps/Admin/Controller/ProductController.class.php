<?php
namespace Admin\Controller;
class ProductController extends CommonController {
    public function index(){  
        //获取分类信息
        $where=array('prodid'=>$_SESSION['prodid'],'state'=>1);
        $arr=M('tp_cate')->where($where)->order('sn')->select();
        $this->assign('arr',$arr);
        if($_GET['cate']){//如果有参数用参数的信息
            $_SESSION['prodCate']=$_GET['cate'];
            $_SESSION['productSearch']='';
            $_SESSION['productPage']='';
        }elseif ($_SESSION['prodCate']){//没参数，SESSION中有值，什么也不做            
        }else {//没有参数，SESSION中也没有值用查询中的第一个             
            $_SESSION['prodCate']=$arr['0']['cateid'];
            $_SESSION['productSearch']='';
            $_SESSION['productPage']='';
        }        
        
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION['productSearch']=$_POST['search'];
            }else {
                $_SESSION['productSearch']='';
            }
            $this->assign('search',$_SESSION['productSearch']);
            $map['name|money|smoney|productDesc|weight|zhouqi']=array('like','%'.$_SESSION['productSearch'].'%');
        }     
        
        $map['cateId']=$_SESSION['prodCate'];
        $m=M('tp_product');
        if ($_GET['p']){//储存当前翻页
            $_SESSION['productPage']=$_GET['p'];
        }        
        $maxPageNum=12;
        $data=$m->where($map)->order('sn')->page($_SESSION['productPage'],$maxPageNum)->select();
        $this->assign('data',$data); 
        $count      = $m->where($map)->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,$maxPageNum);// 实例化分页类 传入总记录数和每页显示的记录数       
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出       
        
        $this->display();
    }
    
    
    public function add(){
        /*接收参数*/
        $cateId=$_GET[cateId];
        $this->assign('cateId',$cateId);
        $where['prodid']=$_SESSION['prodid'];      
        /*实例化模型*/
        $m=D('tp_product');
        $map['cateId']=$cateId;        
        $count=$m->where($map)->count()+1;
        $this->assign("count",$count);
        $this -> assign("state", formSV("","state"));
        $this -> assign("zhouqi", formSV("","zhouqi","zhouqi"));
        
        $this->display();    
    } 
    
    
    public function insert(){   
        $m=D('tp_product');
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(12);
            $arr=$m->find($id);
        } while ($arr);
        $_POST['productId']=$id;
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/Product/'; // 设置附件上传目录
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
            $_POST['productImg']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
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

    public function order(){
        /* 实例化模型*/
        $db = D('tp_product');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("productId"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
    
        }else{
            $this->error("排序失败...");
        }
    }
    
    public function mod(){
        $arr=M('tp_product')->find($_GET[id]);
        $this->assign('arr',$arr);
        $this -> assign("state", formSV($arr['state'],"state"));
        $this -> assign("zhouqi", formSV($arr['zhouqi'],"zhouqi","zhouqi"));

        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        //处理上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize  =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.getQz($_SESSION['prodid']).'/';// 设置附件上传目录
        $upload->savePath = '/Product/'; // 设置附件上传目录
        $info  =   $upload->upload();//上传图片
        if(!$info) {// 上传错误提示错误信息          
            if (D('tp_product')->save($_POST)){
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }else{
            $_POST['productImg']=getQz($_SESSION['prodid']).$info['img']['savepath'].$info['img']['savename'];
            if (D('tp_product')->save($_POST)){                
                $image = new \Think\Image();
                $image->open('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(800, 400)->save('./Upload/'.getQz($_SESSION['prodid']).'/'.$info['img']['savepath'].$info['img']['savename']);   //等比例缩放                
                $this->success("修改成功！",U('index'));
            }else{
                $this->error("修改失败！");
            }
        }               
    }
    
    public function fabu(){
        /* 接收参数*/
        $arr['productId']=$_GET['id'];
        if ($_GET['state']=='5'){
            $arr['state']="6";
        }else{
            $arr['state']="5";
            $arr['atime']=date("Y-m-d H:i:s",time());;
        }
        
        $arr['moder']=$_SESSION['realname'];
        if (D('tp_product')->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }
    
    public function istj(){
        /* 接收参数*/
        $arr['productId']=$_GET['id'];
        /* 实例化模型*/
        if ($_GET['istj']==1){
            $arr['istj']=0;
        }else{
            $arr['istj']=1;
        }        
        $arr['moder']=$_SESSION['realname'];
        if (D('tp_product')->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }

    public function del(){
        $count =M('tp_product')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }
    
    
    
}