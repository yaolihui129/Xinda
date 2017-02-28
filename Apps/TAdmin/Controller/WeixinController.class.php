<?php
namespace TAdmin\Controller;
class WeixinController extends CommonController {
    public function index(){
        $m=D('wx_wechat');       
        $arr=$m->find(1);
        $url='https://api.weixin.qq.com/cgi-bin/getcallbackip?access_token='.$arr['access_token'];
        $arr = json_decode(httpGet($url), true);
       dump($arr); 
        
        $this->display();
    }
    

    
    
    
}