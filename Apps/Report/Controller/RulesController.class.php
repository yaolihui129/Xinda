<?php
namespace Report\Controller;
class RulesController extends WebInfoController {
  public function prorules(){
      $_SESSION['proid']=I('proid');     

      $where=array("zt_projectstory.project"=>$_SESSION['proid'], 'zt_story.deleted'=>'0');
      $data=D('module')->where($where)->join('zt_story ON zt_story.module =zt_module.id')
                ->join('zt_projectstory ON zt_projectstory.story =zt_story.id')
                ->field('
                        zt_story.id as id,
                        zt_story.branch as branch,
                        zt_story.module as module,
                        zt_story.title as title,
                        zt_story.status as status,
                        zt_story.stage as stage,
                        zt_story.openedBy as openedBy,
                        zt_story.lastEditedDate as lastEditedDate,
                        zt_story.version as version
                ')->order('zt_story.branch,zt_module.order,zt_module.id')->select();
      $this->assign("data",$data);
      
      $this->display();      
  }

}