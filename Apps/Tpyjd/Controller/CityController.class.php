<?php
namespace Tpyjd\Controller;
class CityController extends WebInfoController {
    public function index(){
        /* 接收参数*/
        $maxPageNum=10;
        if($_GET['ProvinceId']){
            $_SESSION['ProvinceId']=$_GET['ProvinceId'];
        }
        $this->assign('CountryId',$_SESSION['CountryId']);
        $this->assign('ProvinceId',$_SESSION['ProvinceId']);
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $this->assign('search',$search);
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        /* 实例化模型*/
        $m=M('city');
        $where['CityName|QuickCode']=array('like','%'.$search.'%');
        $where['CountryId']=$_SESSION['CountryId'];
        $where['ProvinceId']=$_SESSION['ProvinceId'];
        $data=$m->where($where)->page($page,$maxPageNum)->select();
        $this->assign('data',$data);
        $count=$m->where($where)-count();
        $Num=ceil($count/$maxPageNum);
        $this->assign('Num',$Num);
        
        $this->display();
    }
    
    public function add(){
        $this->assign('CountryId',$_SESSION['CountryId']);
        $this->assign('ProvinceId',$_SESSION['ProvinceId']);
        $this->display();
    }
    
    public function insert(){
        /* 实例化模型*/
        $m=D('city');
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(40);
            $arr=$m->find($id);
        } while ($arr);
        $_POST['CityId']=$id;
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功",U('index'));
        }else{
            $this->error("失败");
        }
    
    }
    
    public function mod(){
        /* 接收参数*/
        $id = $_GET['id'];
        /* 实例化模型*/
        $m= D("city");
        $data=$m->find($id);
        $this->assign("data",$data);
    
        $this->display();
    }
    
    public function update(){
        /* 实例化模型*/
        $db=D('city');
        $_POST['VersionNumber']=intval($_POST['VersionNumber'])+1;
        if ($db->save($_POST)){
            $this->success("成功！",U('index'));
        }else{
            $this->error("失败！");
        }
    }
    
    public function order(){
        /* 实例化模型*/
        $db = D('city');
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
    
    public function del(){
        /* 接收参数*/
        $id = $_GET['id'];
        /* 实例化模型*/
        $m=M('city');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }
    
       
}