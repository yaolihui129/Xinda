<?php
namespace TAdmin\Controller;
class RulesController extends CommonController {
    public function index(){
            /* 接收参数*/
            $proid=$_GET['proid'];
            $_SESSION['proid']=$proid;
            /* 实例化模型*/
            $m= D("project");
            $where=array("testgp"=>$_SESSION['testgp']);
            $pros=$m->where($where)->order("end desc")->select();
            $this->assign("pros",$pros);
        
            $arr=$m->find($proid);
            $this->assign("arr",$arr);
        
        
        //获取模块
        $m=D('module');
        $where=array("zt_projectstory.project"=>$_GET['proid'], 'zt_story.deleted'=>'0');
        $data=$m->where($where)->join('zt_story ON zt_story.module =zt_module.id')
                ->join('zt_projectstory ON zt_projectstory.story =zt_story.id')
                ->field('
                        zt_story.id as id,
                        zt_story.branch as branch,
                        zt_story.module as moduleid,
                        zt_story.title as title,
                        zt_story.status as status,
                        zt_story.stage as stage,
                        zt_story.openedBy as openedBy,
                        zt_story.lastEditedDate as lastEditedDate,
                        zt_story.version as version
                ')
                ->order('zt_story.branch,zt_module.order,zt_module.id')->select();
        $this->assign("data",$data);
//         dump($data);

        
        $this->display();
    }



}