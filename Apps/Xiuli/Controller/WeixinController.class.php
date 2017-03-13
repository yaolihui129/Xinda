<?php
namespace Xiuli\Controller;
use Think\Controller;
class WeixinController extends Controller {
    public function index(){
        //获得参数 signature nonce token timestamp echostr
        $nonce     = $_GET['nonce'];
        $token     = '123weixin';
        $timestamp = $_GET['timestamp'];
        $echostr   = $_GET['echostr'];
        $signature = $_GET['signature'];
        //形成数组，然后按字典序排序
        $array = array();
        $array = array($nonce, $timestamp, $token);
        sort($array);
        //拼接成字符串,sha1加密 ，然后与signature进行校验
        $str = sha1( implode( $array ) );
        if( $str  == $signature && $echostr ){
            //第一次接入weixin api接口的时候
            echo  $echostr;
            exit;
        }
    }
    
    
    // 接收事件推送并回复
    public function reponseMsg(){
        //1.获取到微信推送过来post数据（xml格式）
        $postArr = $GLOBALS['HTTP_RAW_POST_DATA'];
        //2.处理消息类型，并设置回复类型和内容
        /*<xml>
         <ToUserName><![CDATA[toUser]]></ToUserName>
         <FromUserName><![CDATA[FromUser]]></FromUserName>
         <CreateTime>123456789</CreateTime>
         <MsgType><![CDATA[event]]></MsgType>
         <Event><![CDATA[subscribe]]></Event>
        </xml>*/
        $postObj = simplexml_load_string( $postArr );
        //$postObj->ToUserName = '';
        //$postObj->FromUserName = '';
        //$postObj->CreateTime = '';
        //$postObj->MsgType = '';
        //$postObj->Event = '';
        // gh_e79a177814ed
        //判断该数据包是否是订阅的事件推送
        if( strtolower( $postObj->MsgType) == 'event'){
            //如果是关注 subscribe 事件
            if( strtolower($postObj->Event == 'subscribe') ){
                //回复用户消息(纯文本格式)
                $toUser   = $postObj->FromUserName;
                $fromUser = $postObj->ToUserName;
                $time     = time();
                $msgType  =  'text';
                $content  = '欢迎关注我们的微信公众账号'.$postObj->FromUserName.'-'.$postObj->ToUserName;
                $template = "<xml>
							<ToUserName><![CDATA[%s]]></ToUserName>
							<FromUserName><![CDATA[%s]]></FromUserName>
							<CreateTime>%s</CreateTime>
							<MsgType><![CDATA[%s]]></MsgType>
							<Content><![CDATA[%s]]></Content>
							</xml>";
                $info     = sprintf($template, $toUser, $fromUser, $time, $msgType, $content);
                echo $info;
                /*<xml>
                 <ToUserName><![CDATA[toUser]]></ToUserName>
                 <FromUserName><![CDATA[fromUser]]></FromUserName>
                 <CreateTime>12345678</CreateTime>
                 <MsgType><![CDATA[text]]></MsgType>
                 <Content><![CDATA[你好]]></Content>
                 </xml>*/
                	
    
            }
        }
    
        //当微信用户发送imooc，公众账号回复‘imooc is very good'
        /*<xml>
         <ToUserName><![CDATA[toUser]]></ToUserName>
         <FromUserName><![CDATA[fromUser]]></FromUserName>
         <CreateTime>12345678</CreateTime>
         <MsgType><![CDATA[text]]></MsgType>
         <Content><![CDATA[你好]]></Content>
         </xml>*/
        /*if(strtolower($postObj->MsgType) == 'text'){
         switch( trim($postObj->Content) ){
         case 1:
         $content = '您输入的数字是1';
         break;
         case 2:
         $content = '您输入的数字是2';
         break;
         case 3:
         $content = '您输入的数字是3';
         break;
         case 4:
         $content = "<a href='http://www.imooc.com'>慕课</a>";
         break;
         case '英文':
         $content = 'imooc is ok';
         break;
    
         }
         $template = "<xml>
         <ToUserName><![CDATA[%s]]></ToUserName>
         <FromUserName><![CDATA[%s]]></FromUserName>
         <CreateTime>%s</CreateTime>
         <MsgType><![CDATA[%s]]></MsgType>
         <Content><![CDATA[%s]]></Content>
         </xml>";
         //注意模板中的中括号 不能少 也不能多
         $fromUser = $postObj->ToUserName;
         $toUser   = $postObj->FromUserName;
         $time     = time();
         // $content  = '18723180099';
         $msgType  = 'text';
         echo sprintf($template, $toUser, $fromUser, $time, $msgType, $content);
         	
         }
         }
         */
        //用户发送tuwen1关键字的时候，回复一个单图文
        if( strtolower($postObj->MsgType) == 'text' && trim($postObj->Content)=='tuwen2' ){
            $toUser = $postObj->FromUserName;
            $fromUser = $postObj->ToUserName;
            $arr = array(
                array(
                    'title'=>'imooc',
                    'description'=>"imooc is very cool",
                    'picUrl'=>'http://www.imooc.com/static/img/common/logo.png',
                    'url'=>'http://www.imooc.com',
                ),
                array(
                    'title'=>'hao123',
                    'description'=>"hao123 is very cool",
                    'picUrl'=>'https://www.baidu.com/img/bdlogo.png',
                    'url'=>'http://www.hao123.com',
                ),
                array(
                    'title'=>'qq',
                    'description'=>"qq is very cool",
                    'picUrl'=>'http://www.imooc.com/static/img/common/logo.png',
                    'url'=>'http://www.qq.com',
                ),
            );
            $template = "<xml>
						<ToUserName><![CDATA[%s]]></ToUserName>
						<FromUserName><![CDATA[%s]]></FromUserName>
						<CreateTime>%s</CreateTime>
						<MsgType><![CDATA[%s]]></MsgType>
						<ArticleCount>".count($arr)."</ArticleCount>
						<Articles>";
            foreach($arr as $k=>$v){
                $template .="<item>
							<Title><![CDATA[".$v['title']."]]></Title>
							<Description><![CDATA[".$v['description']."]]></Description>
							<PicUrl><![CDATA[".$v['picUrl']."]]></PicUrl>
							<Url><![CDATA[".$v['url']."]]></Url>
							</item>";
            }
            	
            $template .="</Articles>
						</xml> ";
            echo sprintf($template, $toUser, $fromUser, time(), 'news');
    
            //注意：进行多图文发送时，子图文个数不能超过10个
        }else{
            switch( trim($postObj->Content) ){
                case 1:
                    $content = '您输入的数字是1';
                    break;
                case 2:
                    $content = '您输入的数字是2';
                    break;
                case 3:
                    $content = '您输入的数字是3';
                    break;
                case 4:
                    $content = "<a href='http://www.imooc.com'>慕课</a>";
                    break;
                case '英文':
                    $content = 'imooc is ok';
                    break;
            }
            $template = "<xml>
                            <ToUserName><![CDATA[%s]]></ToUserName>
                            <FromUserName><![CDATA[%s]]></FromUserName>
                            <CreateTime>%s</CreateTime>
                            <MsgType><![CDATA[%s]]></MsgType>
                            <Content><![CDATA[%s]]></Content>
                        </xml>";
            //注意模板中的中括号 不能少 也不能多
            $fromUser = $postObj->ToUserName;
            $toUser   = $postObj->FromUserName;
            $time     = time();
            // $content  = '18723180099';
            $msgType  = 'text';
            echo sprintf($template, $toUser, $fromUser, $time, $msgType, $content);
            	
        }//if end
    }//reponseMsg end
    
    function http_curl(){
        //获取imooc
        //1.初始化curl
        $ch = curl_init();
        $url = 'http://www.baidu.com';
        //2.设置curl的参数
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        //3.采集
        $output = curl_exec($ch);
        //4.关闭
        curl_close($ch);
        var_dump($output);
    }
    
    function getWxAccessToken(){
        //1.请求url地址
        $appid = 'wx3452e8086f5fefab';
        $appsecret =  'df38233db1ca1150fa34d42dabf8f5cc';
        $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appid."&secret=".$appsecret;
        //2初始化
        $ch = curl_init();
        //3.设置参数
        curl_setopt($ch , CURLOPT_URL, $url);
        curl_setopt($ch , CURLOPT_RETURNTRANSFER, 1);
        //4.调用接口
        $res = curl_exec($ch);
        //5.关闭curl
        curl_close( $ch );
        if( curl_errno($ch) ){
            var_dump( curl_error($ch) );
        }
        $arr = json_decode($res, true);
        var_dump( $arr );
    }
    
    function getWxServerIp(){
        $accessToken = "4WLM1He-lwLH9BiKaJ0h1O7_Z_ei5kZ35ryFYI8_GHerZ99h0OjSt05i3uIcMSegxFaiwzEsyElVkQrXOE7v460NLD5dvLybAilOBSYxadpjt0paHfCDVx_u-akr2_JFSSKhAFAEEW";
        $url = "https://api.weixin.qq.com/cgi-bin/getcallbackip?access_token=".$accessToken;
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
        $res = curl_exec($ch);
        curl_close($ch);
        if(curl_errno($ch)){
            var_dump(curl_error($ch));
        }
        $arr = json_decode($res,true);
        echo "<pre>";
        var_dump( $arr );
        echo "</pre>";
    
    
    }
   
    
}