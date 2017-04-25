<?php
namespace Admin\Controller;
class CateController extends CommonController {   
    public function index(){        
        if(IS_POST){//查询信息
            if($_POST['search']){//储存当前查询信息
                $_SESSION['cateSearch']=$_POST['search'];
            }else {
                $_SESSION['cateSearch']='';
            }
        }
        $this->assign('search',$_SESSION['cateSearch']);    
        $where['catName']=array('like','%'.$_SESSION['cateSearch'].'%');
        if($_GET['pidCateId']){
            $where['pidCateId']=$_GET['pidCateId'];            
        }else{
            if(!$_SESSION['cateSearch']){
                $where['pidCateId']=000000;
            }           
        }
        $this->assign('pidCateId',$_GET['pidCateId']);
        $where['prodid']=$_SESSION['prodid'];
        $maxPageNum=10;
        if ($_GET['p']){//储存当前翻页
            $_SESSION['catePage']=$_GET['p'];
        }
        $m=M('tp_cate');
        $data=$m->where($where)->order('sn')->page($_SESSION['catePage'],$maxPageNum)->select();
        $this->assign('data',$data); 
        $count      = $m->where($where)->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,$maxPageNum);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
        
        $this->display();
    }
    
    public function add(){       
        $pidCateId=!empty($_GET['pidCateId']) ? $_GET['pidCateId'] : '000000'; 
        $this->assign("pidCateId",$pidCateId);
        $map=array('prodid'=>$_SESSION['prodid'],'pidCateId'=>$pidCateId);
        $count=M('tp_cate')->where($map)->count()+1;
        $this->assign("count",$count);  
        $this -> assign("state", formSV("","state"));
        
        $this->display();        
    }
    
    public function insert(){   
        $m=D('tp_cate');
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(6);
            $arr=$m->find($id);
        } while ($arr);
        $_POST['cateId']=$id;
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];   
        if(!$m->create()){
            $this->error($m->getError());
        }
        if($m->add()){
            $this->success("成功",U('index'));
        }else{
            $this->error('失败');
        }
    }
    
    public function order(){
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
//             dump(array("id"=>$id, "sn"=>$sn));
            $num += D('tp_cate')->save(array("cateId"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");   
        }else{
            $this->error("排序失败...");
        }
    }
    
    public function mod(){
        $arr=D('tp_cate')->order('sn')->find($_GET[id]);
        $this->assign('arr',$arr);  
        $this->assign("state", formSV($arr['state'],"state"));
    
        $this->display();
    }
    
    
    public function update(){
        $_POST['moder']=$_SESSION['realname'];
        if (D('tp_cate')->save($_POST)){
            $this->success("修改成功！",U('index'));
        }else{
            $this->error("修改失败！");
        }
    }     
    
    public function del(){
        $count =D('tp_cate')->delete($_GET['id']);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }   
    }

}