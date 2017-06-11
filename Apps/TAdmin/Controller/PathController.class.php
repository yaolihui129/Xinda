<?php
namespace TAdmin\Controller;

class PathController extends CommonController {
    public function index(){
        $map['project']=$_SESSION['proid'];
        $data=M('tp_prosys')->where($map)->join('zt_branch ON zt_branch.id = zt_tp_prosys.branch')->order("zt_branch.sysno")->select();
        $this->assign("data",$data);            

        $arr=M('branch')->find(I('sysid'));
        $this->assign("arr",$arr);

        $where['branch']=I('sysid');
        $where['state']='正常';
        $pathes= M('module')->where($where)->order("sn,id")->select();
        $this->assign("pathes",$pathes);        
               
	    $this->display();
    }

    public function mod(){
        $m=D('module');        
        $path=$m->find(I('id'));
        $this->assign("path",$path);
        $this -> assign("state", formselect($path['state'],"state"));      
              
        $where=array("branch"=>$path['branch'],'state'=>'正常');
        $data= $m->where($where)->order("sn,id")->select();
        $this->assign("data",$data);
      
        $this->display();
    }

    public function library(){
        $m=M('tp_exescene');
        $where=array("stagetesterid"=>I('stagetesterid'));
        $exe=$m->where($where)->order("sn")->select();
        $this->assign('exe',$exe);
        $this->assign('stagetesterid',I('stagetesterid'));

        $where=array("zt_tp_prosys.project"=>$_SESSION['proid'],"zt_module.state"=>"正常");
        $data=M("tp_prosys")->join('inner JOIN zt_branch ON zt_branch.id = zt_tp_prosys.branch')
        ->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->where($where)->order("zt_branch.sysno,zt_module.sn,zt_module.id")->select();
        $this->assign("data",$data);

        $this->display();
    }
    public function jion(){

        $stt=M('tp_stagetester')->find(I('stagetesterid')); 
        $data=M('module')->find(I('pathid'));
        $arr['pathid']=$data['id'];
        $arr['sceneid']=0;
        $arr['level']=2;
        $arr['stagetesterid']=I('stagetesterid');
        $arr['type']=$stt['type'];
        $arr['swho']='【功能】';
        $arr['swhen']='默认';
        $arr['rproid']=$_SESSION['proid'];
        $arr['scene']=getModuleName($data['id']);
        $arr['flow']='“'.$arr['scene'].'“下所有功能点';
        $arr['results']='未测试';
        $arr['moder']=$_SESSION['realname'];

        $m=D('tp_exescene');               
        $where=array("stagetesterid"=>I('stagetesterid'),"type"=>$stt['type']);
        $arr['sn']=$m->where($where)->count()+1;
        /*插入执行场景数据 */
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);       
        $where=array("pathid"=>$data['id'],"fproid"=>$_SESSION['proid']);
        $funcs=M("tp_func")->where($where)->field("sn,id as funcid,func")->order("sn")->select();
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