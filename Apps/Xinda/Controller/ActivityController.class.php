<?php
namespace Xinda\Controller;
class ActivityController extends WebInfoController {
    function init(){
        $info=array(
            'table'=>'tp_activity',
            'name'=>'Activity',
        );
        return $info;
    }
    public function index(){
        $info=$this->init();
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        if(I('wxAppId')){
            $this->weiXinLogin(I('wxAppId'), I('wxOpenId'));
        }
        $this->details($info['table'],I('id'));               
        $this->display();
    }
    
    public function activityList(){ 
        $info=$this->init();
        $map['type']=$info['name'];
        $this->dataChaxun($info['table'], $info['name'], $map,C('maxPageNum'),I('p'));
        $this->display();      
    }
    
    
    

}