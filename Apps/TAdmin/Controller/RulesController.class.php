<?php
namespace TAdmin\Controller;
class RulesController extends CommonController {
    public function index(){
        //获取模块
        $m=D('tp_prosys');
        $where=array("zt_projectstory.project"=>$_GET['proid'],'zt_module.state'=>'正常',' zt_story.deleted'=>'0');
        $data=$m->where($where)->join('zt_branch ON zt_tp_prosys.branch =zt_branch.id')
                ->join('zt_module ON zt_module.branch =zt_branch.id')
                ->join('zt_story ON zt_story.module =zt_module.id')
                ->join('zt_projectstory ON zt_projectstory.story =zt_story.id')
                ->field('
                        zt_story.id as id,
                        zt_branch.name as branch,
                        zt_module.id as moduleid,
                        zt_module.parent as parent,
                        zt_module.name as module,
                        zt_story.title as title,
                        zt_story.status as status,
                        zt_story.stage as stage,
                        zt_story.openedBy as openedBy,
                        zt_story.lastEditedDate as lastEditedDate,
                        zt_story.version as version
                ')
                ->order('zt_branch.sysno')->select();
        $this->assign("data",$data);
//         dump($data);

        
        $this->display();
    }



}