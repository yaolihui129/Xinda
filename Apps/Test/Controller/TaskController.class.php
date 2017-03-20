<?php
namespace Test\Controller;
use Think\Controller;
class TaskController extends Controller {
    public function index(){

        $m=D('task');
        $where['deleted']='0';
        $where['assignedTo'] = array('neq','closed');
        $where['status']=array('neq','cancel');
        $data=$m->where($where)
        ->order("assignedTo,finishedBy,project,type,story")
        ->select();
//         dump($data);
        $this->assign('data',$data);
        
        $this->display();
    } 
    
    
    
    public function doing(){
//        
        $Model = new \Think\Model() ;// 实例化一个model对象 没有对应任何数据表
        $data=$Model
        ->query("SELECT
                zt_task.assignedTo AS assignedto,
                Sum(zt_task.estimate) AS estimate,
                Sum(zt_task.consumed) AS consumed,
                Sum(zt_task.left) AS left1
                FROM
                zt_task
                WHERE
                zt_task.deleted = '0' AND
                zt_task.`status` <> 'cancel' AND
                zt_task.assignedTo <> 'closed'
                GROUP BY
                zt_task.assignedTo
                ORDER BY
                assignedto ASC");
        
        
        $this->assign('data',$data);
    
        $this->display();
    
    }
    
    public function finish(){


        $Model = new \Think\Model() ;// 实例化一个model对象 没有对应任何数据表
        $data=$Model
        ->query("SELECT
                zt_task.finishedBy AS finishedby,
                Sum(zt_task.estimate) AS estimate,
                Sum(zt_task.consumed) AS consumed,
                Sum(zt_task.left) AS left1
                FROM
                zt_task
                WHERE
                zt_task.assignedTo = 'closed' AND
                zt_task.deleted = '0'
                GROUP BY
                zt_task.finishedBy
                            ");
        $this->assign('data',$data);
    
        $this->display();
    
    }
    
    public function _empty(){
    
        $this->display('index');
    }
    
    
}
   