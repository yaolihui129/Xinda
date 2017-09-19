<?php
namespace Admin\Controller;
class ProductController extends CommonController {
    function info(){
        $info=array(
            'table'=>'tp_product',
            'table1'=>'tp_cate',
            'table2'=>'tp_brand',
            'name'=>'Product',
            'idLenth'=>'12',
            'idType'=>'char'
        );
        return $info;
    }

    public function index(){
        $info=$this->info();
        //获取分类信息
        $where=array('prodid'=>$_SESSION['prodid'],'state'=>1);
        $arr=M($info['table1'])->where($where)->order('sn')->select();
        $this->assign('arr',$arr);
        $cate=I('cate');
        if($cate){//如果有参数用参数的信息
            $_SESSION['prodCate']=$cate;
            $_SESSION[$info['name'].'Search']='';
            $_SESSION[$info['name'].'Page']='';
        }elseif ($_SESSION['prodCate']){//没参数，SESSION中有值，什么也不做            
        }else {//没有参数，SESSION中也没有值用查询中的第一个             
            $_SESSION['prodCate']=$arr['0']['cateid'];
            $_SESSION[$info['name'].'Search']='';
            $_SESSION[$info['name'].'Page']='';
        }        
        $map['cateId']=$_SESSION['prodCate'];
        $map['type']=1;
        //查询信息
        if(IS_POST){
            if($_POST['search']){//储存当前查询信息
                $_SESSION[$info['name'].'Search']=$_POST['search'];
            }else {
                $_SESSION[$info['name'].'Search']='';
            }
            $this->assign('search',$_SESSION[$info['name'].'Search']);
            $map['name|desc']=array('like','%'.$_SESSION[$info['name'].'Search'].'%');
        }     
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));       
        $this->display();
    }
    
    public function service(){
        $info=$this->info();
        //获取分类信息
        $where=array('prodid'=>$_SESSION['prodid'],'state'=>1);
        $arr=M($info['table1'])->where($where)->order('sn')->select();
        $this->assign('arr',$arr);
        $cate=I('cate');
        if($cate){//如果有参数用参数的信息
            $_SESSION['prodCate']=$cate;
            $_SESSION[$info['name'].'Search']='';
            $_SESSION[$info['name'].'Page']='';
        }elseif ($_SESSION['prodCate']){//没参数，SESSION中有值，什么也不做            
        }else {//没有参数，SESSION中也没有值用查询中的第一个             
            $_SESSION['prodCate']=$arr['0']['cateid'];
            $_SESSION[$info['name'].'Search']='';
            $_SESSION[$info['name'].'Page']='';
        }        
        $map['cateId']=$_SESSION['prodCate'];
        $map['type']=0;
        //查询信息
        if(IS_POST){
            if($_POST['search']){//储存当前查询信息
                $_SESSION[$info['name'].'Search']=$_POST['search'];
            }else {
                $_SESSION[$info['name'].'Search']='';
            }
            $this->assign('search',$_SESSION[$info['name'].'Search']);
            $map['name|productDesc']=array('like','%'.$_SESSION[$info['name'].'Search'].'%');
        }
        
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));  
        $this->display();
    }
    
    public function add(){
        $info=$this->info();
        $cateId=$_GET[cateId];
        $this->assign('cateId',$cateId);
        $map['prodid']=$_SESSION['prodid'];      
        $map['cateId']=$cateId; 
        $map['isDelete']=0;
        $count=D($info['table'])->where($map)->count()+1;
        $this -> assign("count",$count);
        $this -> assign("brand", self::brandForm(""));
        
        $this->display();    
    } 
    public function sadd(){
        $info=$this->info();
        $cateId=$_GET[cateId];
        $this->assign('cateId',$cateId);
        $map['prodid']=$_SESSION['prodid'];
        $map['cateId']=$cateId;
        $count=D($this->getTable())->where($map)->count()+1;
        $this->assign("count",$count);
        $this -> assign("brand", self::brandForm(""));
        $this -> assign("state", formSV("","state"));
        $this -> assign("zhouqi", formSV("","zhouqi","zhouqi"));
    
        $this->display();
    }
    
    
    public function insert(){
        $info=$this->info();
        $m=D('tp_product');
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(12);
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
    public function update(){//更新
        $info=$this->info();
        $this->dataUpdate($info['table'], $info['name'], $_POST);
    }
    
    public function order(){ //排序
        $info=$this->info();
        $this->paiXu($info['table'], $_POST);
    }

    public function mod(){
        $info=$this->info();
        $arr=M($info['table'])->find($_GET[id]);
        $this -> assign('arr',$arr);
        $this -> assign("brand", self::brandForm($arr['brand']));
        $this -> display();
    }
    
    public function smod(){
        $info=$this->info();
        $arr=M($info['table'])->find($_GET[id]);
        $this -> assign('arr',$arr);
        $this -> assign("brand", self::brandForm($arr['brand']));
        $this -> display();
    }
    
    public function fabu(){//发布、下线
        $info=$this->info();
        $this->Release($info['table'], I('id'), I('state'));
    }
    
    public function del(){//删除
        $info=$this->info();
        $this->ljshanChu($info['table'],I('id'));
    }
    
    public function istj(){
        $info=$this->info();
        $arr['id']=I('id');
        if (I('istj')==1){
            $arr['istj']=0;
        }else{
            $arr['istj']=1;
        }        
        $arr['moder']=$_SESSION['realname'];
        if (D($info['table'])->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }

    function brandForm($value) {
        $info=$this->info();
        $map['prodid']=$_SESSION['prodid'];      
        $map['isDelete']=0;
        $brand=M($info['table2'])->where($map)->select();
        $html = '<select name="brand" class="form-control">';
        foreach($brand as $v) {
            $selected = ($v['id']==$value) ? "selected" : "";
            $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['name'].'</option>';
        }
        $html .='<select>';
        return $html;
    }
   
    
    
    
}