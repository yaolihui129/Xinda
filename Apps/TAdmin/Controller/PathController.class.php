<?php
namespace TAdmin\Controller;

class PathController extends CommonController {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];      
        /* 实例化模型*/
        $m=D('tp_prosys');
        $map['project']=$proid;
        $data=$m->where($map)->join('zt_branch ON zt_branch.id = zt_tp_prosys.branch')->order("zt_branch.sysno")->select();
        $this->assign("data",$data);            
        /* 实例化模型*/
        $m=D('branch');
        $arr=$m->find($sysid);
        $this->assign("arr",$arr);
         /* 实例化模型*/
        $m=D('module');
        $where['branch']=$sysid;
        $where['state']='正常';
        $pathes= $m->where($where)->order("sn,id")->select();
        $this->assign("pathes",$pathes);
        $this->assign("proid",$proid);
        
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect("","state"));

	    $this->display();
    }



    public function insert(){
        /* 实例化模型*/
        $m=D('module');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['type']='story';
        $_POST['grade']=1;
        $_POST['order']=10;
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
           $this->success("成功");
        }else{
            $this->error("失败");
        }

    }

    public function mod(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('module');        
        $path=$m->find($id);
        $this->assign("path",$path);
        $this -> assign("state", formselect($path['state'],"state"));      
              
        $where=array("branch"=>$path['branch']);
        $data= $m->where($where)->order("sn,id")->select();
        $this->assign("data",$data);
        $this->assign("proid",$proid);
        
        $this->display();
    }

   


    public function library(){
        /* 接收参数*/
        $stagetesterid=$_GET['stagetesterid'];
        $this->assign('stagetesterid',$stagetesterid);
        /* 实例化模型*/
        $m=D('tp_exescene');
        $where=array("stagetesterid"=>$stagetesterid);
        $exe=$m->where($where)->order("sn")->select();
        $this->assign('exe',$exe);
        /* 实例化模型*/
        $m= D("tp_prosys");
        $where=array("zt_tp_prosys.project"=>$_SESSION['proid'],"zt_module.state"=>"正常");
        $data=$m->join('inner JOIN zt_branch ON zt_branch.id = zt_tp_prosys.branch')
        ->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->where($where)->order("zt_branch.sysno,zt_module.sn,zt_module.id")->select();
        $this->assign("data",$data);

        $this->display();

    }
    public function jion(){
        /* 接收参数*/
        $stagetesterid=$_GET['stagetesterid'];
        $pathid=$_GET['pathid'];
        /* 实例化模型*/
        $m=D('tp_stagetester');
        $stt=$m->find($stagetesterid); 

        $m=D('module');
        $data=$m->find($pathid);
        $arr['pathid']=$data['id'];
        $arr['sceneid']=0;
        $arr['level']=2;
        $arr['stagetesterid']=$stagetesterid;
        $arr['type']=$stt['type'];
        $arr['swho']='【功能】';
        $arr['swhen']='默认';
        $arr['rproid']=$_SESSION['proid'];
        $arr['scene']=getModuleName($data['id']);
        $arr['flow']='“'.$arr['scene'].'“下所有功能点';
        $arr['results']='未测试';
        $arr['moder']=$_SESSION['realname'];

        $m=D('tp_exescene');               
        $where=array("stagetesterid"=>$stagetesterid,"type"=>$stt['type']);
        $arr['sn']=$m->where($where)->count()+1;

        /*插入执行场景数据 */
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);
        
        $m= D("tp_func");
        $where=array("pathid"=>$data['id'],"fproid"=>$_SESSION['proid']);
        $funcs=$m->where($where)->field("sn,id as funcid,func")->order("sn")->select();

        /*插入执行场景功能数据 */
        foreach ($funcs as $a){
            $a['path']=$arr['scene'];
            $a['exesceneid']=$lastId;
            $a['moder']=$_SESSION['realname'];
            $m=D('tp_exefunc');
            if(!$m->create($a)){
                $this->error($m->getError());
            }
            $lastfId=$m->add($a);
        }

        if($lastfId){
            $this->success("成功");
        }else{
            $this->error("失败");
        }
    }
 
    
}