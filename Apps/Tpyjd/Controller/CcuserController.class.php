<?php
namespace Tpyjd\Controller;
use Think\Controller;
class CcuserController extends Controller {
    public function index(){

        $this->display();
    }
    //新增用户CRM
    function insert(){
        
        $url=PublicController::getUrl();
        //封装接口地址
        $url=$url."/distributor.action";

        $cuserArr=array(
            "loginname"=>"ltytest@163.com",
            "name"=>"ltytest",
            "ename"=>"ltytest",
            "employeenum"=>"",
            "title"=>"test",
            "mobile"=>"13227185823",
            "qq"=>"",
            "wxzh"=>"",
            "email"=>"ltytest@163.com",
            "region"=>"huadong",
            "beizhu"=>"xinceng"
        );
        
        $cuserJson='['.json_encode($cuserArr).']';
        
        $insertArr=array(
            "serviceName"=>"insert",
            "objectApiName"=>"ccuser",
            "data"=>$cuserJson,
            "binding"=>$_SESSION['binding']
        );
        $insertJson=json_encode($insertArr);
        dump($insertArr);
        //发送新增客户请求
//       $res= httpPost($url, $insertJson);
      
//       $this->ajaxReturn($res);
    }

    public function _empty(){

        $this->display('index');
    }
     
}