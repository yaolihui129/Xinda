<?php
namespace Demo\Controller;
class TestController extends WebInfoController {
    public function index(){
        $arr=wxNewsArr(5);
        dump($arr);
    }
    
}