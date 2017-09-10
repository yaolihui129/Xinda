<?php
namespace Xinda\Controller;
class ArticleController extends WebInfoController {
    public function index(){
        getWebInfo(C('PRODUCT'));//获取网页信息
        $this->changeMuban(I('muban'));//更换模板
        if($_SESSION['isCLogin']==C(PRODUCT)){//已经登录跳过
        }else {//未登录
            if(I('wxAppId')){
                $this->weiXinLogin(I('wxAppId'), I('wxOpenId'));
            }
        }
        $id=I('id');
        $table=$this->getTable();
        $this->details($table, $id);               
        $this->display();

        $this->display();
    }

    public function articleList(){
        $map['type']=$this->getName();
        $savePath=$this->getName();
        $table=$this->getTable();
        $this->dataChaxun($table, $savePath, $map,C('maxPageNum'),I('p'));
        $this->display();
    }

    function getTable(){
        return 'tp_article';
    }
    function getName(){
        return 'article';
    }


}