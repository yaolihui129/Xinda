<?php
namespace TAdmin\Controller;
class IndexController  extends CommonController{    
   
    public function index(){
        $_SESSION['testgp']=I('testgp',$_SESSION['testgp']);
        $data=M('dict')->where(array("type"=>"testgp","state"=>"正常"))->field("id,k,v,state")->select();
        $this->assign('data',$data);
        $this->assign('search',I('search'));

        $map['testgp']=$_SESSION['testgp'];
        $map['name|code']=array('like','%'.I('search').'%');
        $map['acl']='private';
        $map['deleted']='0';        
        $arr=M('project')->where($map)->order("end desc")->field("id,name,code,status")->select();
        $this->assign('arr',$arr);       

	    $this->display();
    }
    
    public function rule(){
        $_SESSION['proid']=I('proid');
    
        $m= D("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("code desc")->select();
        $this->assign("pros",$pros);
    
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);
    
        $where=array("zt_projectstory.project"=>$_SESSION['proid'], 'zt_story.deleted'=>'0');
        $data=M('module')->where($where)->join('zt_story ON zt_story.module =zt_module.id')
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
    
        $this->display();
    }
    
    public function bug(){
        $_SESSION['proid']=I('proid');
        
        $m= M("project");
        $where=array("testgp"=>$_SESSION['testgp'],"deleted"=>'0');
        $pros=$m->where($where)->order("code desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($_SESSION['proid']);
        $this->assign("arr",$arr);

        $where=array("project"=>$_SESSION['proid'],"deleted"=>'0');
        $data=D("bug")->where($where)
        ->field('id,project,title,branch,module,status,openedby,openeddate,openedbuild,assignedto,resolvedbuild,deleted')
        ->select();
        $this->assign("data",$data);
        
        $this->display();
    }
    
    public  function test(){
        $_SESSION['ip']= get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
             
        $this->theme($_SESSION['theme'])->display();
    }
}