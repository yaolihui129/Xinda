<?php
namespace Tpyjd\Controller;
class DicController extends WebInfoController {
    public function index(){
        $m=M('dictmap');
        $arr=$m->field('FieldName')->group('FieldName')->select();
        $this->assign('arr',$arr);
        
        if ($_POST['search']){
            $_SESSION['FieldName']=$_POST['search'];
            $this->assign('search',$_SESSION['FieldName']);
        }
        if ($_GET['FieldName']){//如果有URL参数，从参数取值
            $_SESSION['FieldName']=$_GET['FieldName'];
        }
        if(!$_SESSION['FieldName']) {//如果都没有，给默认值
            $_SESSION['FieldName']="actionTypeCode";
        }

        $this->assign('FieldName',$_SESSION['FieldName']);
        $data=$m->field('ObjectTypeCode,FieldName,FieldValue,DictId,DisplayText,DisplayOrder')
        ->where(array('FieldName'=>$_SESSION['FieldName']))->order('DisplayOrder')->select();
        $this->assign('data',$data);
        $this->display();
    }
    
       
}