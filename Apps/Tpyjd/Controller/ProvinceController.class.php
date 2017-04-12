<?php
namespace Tpyjd\Controller;
class ProvinceController extends WebInfoController {
    public function index(){
        /* 接收参数*/
        $maxPageNum=10;
        if($_GET['CountryId']){
            $_SESSION['CountryId']=$_GET['CountryId'];
        }
        $this->assign('CountryId',$_SESSION['CountryId']);
        $search=!empty($_POST['search']) ? $_POST['search'] : $_GET['search'];
        $this->assign('search',$search);
        $page=!empty($_GET['page']) ? $_GET['page'] : 1;
        /* 实例化模型*/
        $m=M('province');
        $where['ProvinceName|QuickCode']=array('like','%'.$search.'%');
        $where['CountryId']=$_SESSION['CountryId'];
        $data=$m->where($where)->page($page,$maxPageNum)->select();
        $this->assign('data',$data);
        $count=$m->where($where)-count();
        $Num=ceil($count/$maxPageNum);
        $this->assign('Num',$Num);
        
        $this->display();
    }
    
    public function add(){       
        $this->assign('CountryId',$_SESSION['CountryId']);   
        $this->display();
    }
    
    public function insert(){
        /* 实例化模型*/
        $m=D('province');
        do {//如果该ID在库中存在，则重新获取
            $id=getRandCode(40);
            $arr=$m->find($id);
        } while ($arr);
        $_POST['ProvinceId']=$id;
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
        $m= D("province");
        $data=$m->find($id);
        $this->assign("data",$data);
    
        $this->display();
    }
    
    public function update(){
        /* 实例化模型*/
        $db=D('province');
        $_POST['VersionNumber']=intval($_POST['VersionNumber'])+1;
        if ($db->save($_POST)){
            $this->success("成功！",U('index'));
        }else{
            $this->error("失败！");
        }
    }
    
    public function order(){
        /* 实例化模型*/
        $db = D('province');
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
        $m=M('province');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }
    
       
}