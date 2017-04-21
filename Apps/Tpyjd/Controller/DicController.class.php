<?php
namespace Tpyjd\Controller;
class DicController extends WebInfoController {
    public function index(){
        $m=M('dictmap');
        $arr=$m->field('FieldName')->group('FieldName')->select();
        $this->assign('arr',$arr);
        
        if ($_GET['FieldName']){//如果有URL参数，从参数取值
            $FieldName=$_GET['FieldName'];
        }elseif ($_SESSION['FieldName']){//没有参数，从$_SESSION中取值
            $FieldName=$_SESSION['FieldName'];
        }else {//如果都没有，给默认值state
            $FieldName="actionTypeCode";
        }
        $_SESSION['FieldName']=$FieldName;
        $this->assign('FieldName',$FieldName);
        $data=$m->field('ObjectTypeCode,FieldName,FieldValue,DictId,DisplayText,DisplayOrder')
        ->where(array('FieldName'=>$FieldName))->order('DisplayOrder')->select();
        $this->assign('data',$data);
        $this->display();
    }
    
       
}