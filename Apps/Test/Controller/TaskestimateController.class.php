<?php
namespace Test\Controller;
class TaskestimateController extends WebInfoController {
    public function index(){
        $info=$this->getInfo();
        $m=M($info['table']);
//         $riqi=date("Y-m-d",time()-9*24*3600);
//         $map['date']  = array('egt',$riqi);
        $user=array('benjamin','loki','Wain','damon','abby');
        $map['account']=array('not in',$user);
        $data=$m->where($map)->select();
        $arr[]=$data[0]['account'];
        foreach ($data as $d){            
            if(in_array($d['account'], $arr)){               
            }else {
                $arr[]=$d['account'];
            }
        }
//         
        $this->assign('arr',$arr);
//         $where['zt_taskestimate.date']=array('egt',$riqi);
        $where['zt_taskestimate.account']=array('not in',$user);
        $join='zt_task ON zt_taskestimate.task=zt_task.id';
        $var=$m->join($join)->where($where)->order('zt_task.project desc')->select();
        $project[]=$var[0]['project'];
        foreach ($var as $v){
            if(in_array($v['project'], $project)){
            }else {
                $project[]=$v['project'];
            }
        }
        $this->assign('project',$project);        
        $this->display();
    }
    
    public function dailyTaskAssignment(){
        
        $project=I('project');
        $this->assign("project",$project);
        $where['zt_task.project']=I('project');
        $join='zt_task ON zt_taskestimate.task=zt_task.id';
        $data=M('taskestimate')->join($join)->where($where)->group('name')->order('account desc')->select();
        $this->assign("data",$data);
        $data=M('taskestimate')->join($join)->where($where)->group('name')->order('date desc')->select();
        $arr[]=$data[0]['date'];
        foreach ($data as $d){
            if(in_array($d['date'], $arr)){
            }else {
                $arr[]=$d['date'];
            }
        }
        $this->assign('arr',$arr);
//         dump($arr);
        $this->display();
    }
    
    function getInfo(){
        $data=array(
            'table'=>'taskestimate',
            'name'=>'Taskestimate'
        );
        return $data;
    }
    
}