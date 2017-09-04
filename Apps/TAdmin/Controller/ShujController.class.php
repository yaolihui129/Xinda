<?php
namespace TAdmin\Controller;
class ShujController extends CommonController {
    public function index(){
        $m=D('tp_kehu');
        $where['creditid']=array('exp',' is NULL');

            $arr=$m->where($where)->limit(1000)->select();
            foreach ($arr as $a){
                $a['creditid']=getRandCode(9);
                $a['ctime']=time();
                $a['password']=md5(123456);
                $m->save($a);
            }
            $data=$m->where($where)->count();
            $this->assign('arr',$data);
           

        $this->display();
        
        
    }
    
    public function test(){
        $m=D('tp_kehu');
        $where['creditid']=array('exp',' is NULL');
        $arr=$m->where($where)->page(3,700)->select();
        foreach ($arr as $a){
            $a['creditid']=getRandCode(9);
            $a['ctime']=time();
            $a['password']=md5(123456);
            $m->save($a);
        }
        $data=$m->where($where)->count();
        $this->assign('arr',$data);
         
        
        $this->display();
        
        
    }
}