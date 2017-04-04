<?php
namespace Anshun\Controller;
use Think\Controller;
class WeixinController extends Controller {
    
    public function _empty(){
    
        $this->display('index');
    }
    
    public function index(){
        //获得参数 signature nonce token timestamp echostr
        $nonce      = $_GET['nonce'];
        $token      = "123weixin";
        $timestamp  = $_GET['timestamp'];
        $echostr    = $_GET['echostr'];
        $signature  = $_GET['signature'];
        //形成数组,然后按字典排序
        $array      = array();
        $array      = array($nonce,$timestamp,$token);
        sort($array);
        
        //拼接成字符串，sha1加密,然后与signature进行校验
        $str =sha1(implode($array));
        if($str == $signature && $echostr){
            //第一次接入Weixin api 接口的时候
            echo $echostr;
            exit;
        }else{
            $this->reponseMsg();
        }
    }
    
    
    //接收事件推送并回复
    public function reponseMsg(){
        //1.获取到微信推送过来的post数据（xml格式）
        $postArr = $GLOBALS['HTTP_RAW_POST_DATA'];
        //2.处理消息类型，并设置回复类型和内容
        $postObj = simplexml_load_string( $postArr );
        $toUser    = $postObj->FromUserName;
        $fromUser  = $postObj->ToUserName;
        $time      = time();
        //判断该数据包是否是订阅的事件推送
        if(strtolower($postObj->MsgType) == 'event'){
            //如果是关注subscrine事件
            if(strtolower($postObj->Event) == 'subscribe' ){
                //回复用户消息(纯文本格式)
                
                $msgType   = 'text';
                $content   = '欢迎关注智慧信达微信服务号，我们为您提供优质的网络服务';
                $template  ="<xml>
                            <ToUserName><![CDATA[%s]]></ToUserName>
                            <FromUserName><![CDATA[%s]]></FromUserName>
                            <CreateTime>%s</CreateTime>
                            <MsgType><![CDATA[%s]]></MsgType>
                            <Content><![CDATA[%s]]></Content>
                            </xml>";
                echo sprintf($template,$toUser,$fromUser,$time,$msgType,$content);

            }
        }
        
        
        //关键字回复
        if ( strtolower($postObj->MsgType) == 'text'){   
            
            if(trim($postObj->Content)=='智慧信达'){
                $msgType   = 'news';
                $arr = array(
                    array(
                        'title'=>'北京智慧信达网络服务',
                        'description'=>"北京智慧信达商贸有限公司",
                        'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                        'url'=>'http://www.zhihuixinda.com',
                    ),
                    array(
                        'title'=>'临城秀丽广告门市',
                        'description'=>"临城秀丽广告门市",
                        'picUrl'=>'http://www.xiuliguanggao.com/Upload/Xiuli/Ad/2017-02-11/589e8ee8d99c9.png',
                        'url'=>'http://www.xiuliguanggao.com',
                    ),
                    array(
                        'title'=>'安顺汽车服务中心',
                        'description'=>"临城安顺汽车服务中心",
                        'picUrl'=>'http://www.xiuliguanggao.com/Public/images/Anshun/banner.jpg',
                        'url'=>'http://www.xiuliguanggao.com/index.php/Anshun',
                    ),
                   array(
                       'title'=>'石家庄拓才教育',
                       'description'=>"石家庄拓才教育",
                       'picUrl'=>'http://www.tuocaijiaoyu.com/Upload/Tuocai/Ad/2017-02-04/5895819138465.png',
                       'url'=>'http://www.tuocaijiaoyu.com',
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
                echo sprintf($template, $toUser, $fromUser, $time, $msgType);
                
                
            }else {
                $msgType   = 'text';
                $template  ="<xml>
                            <ToUserName><![CDATA[%s]]></ToUserName>
                            <FromUserName><![CDATA[%s]]></FromUserName>
                            <CreateTime>%s</CreateTime>
                            <MsgType><![CDATA[%s]]></MsgType>
                            <Content><![CDATA[%s]]></Content>
                            </xml>";
                
                $where['key']= trim($postObj->Content);
                $m=D('wx_key');
                $data=$m->where($where)->select();
                if($data){
                    $content = $data[0]['content'];
                }else {
                    $content ='没有找到你要的信息，欢迎登录<a href="http://www.zhihuixinda.com">智慧信达官方网站</a>';
                }
                
                echo sprintf($template,$toUser,$fromUser,$time,$msgType,$content);
            }              
           
        }                
                
    }
    
    
   public function getToken(){
       //获取AccessToken
       $data = getWxAccessToken(2);
       return $data;
   }
   
   public function getWxServerIp() {
       
       if($_SESSION['wx_ip_list']){
           
       }else {
           $_SESSION['wx_ip_list'] = getWxServerIp(2);
       }
       
       dump($_SESSION);      
   }
  
   
   //获取自定义菜单
   function getMenu() {
      $token = $this->getToken();
      $url   = 'https://api.weixin.qq.com/cgi-bin/menu/get?access_token='.$token;
      $res   = httpGet($url);
      $arr   = json_decode($res,true);
      dump($arr);
   }
   
   //获取自定义菜单
   function creatMenu() {
       $token = $this->getToken();
       $url   = 'https://api.weixin.qq.com/cgi-bin/menu/create?access_token='.$token;
//        {
//            "button":[
//            {
//                "type":"click",
//                "name":"今日歌曲",
//                "key":"V1001_TODAY_MUSIC"
//            },
//            {
//                "name":"菜单",
//                "sub_button":[
//                {
//                    "type":"view",
//                    "name":"搜索",
//                    "url":"http://www.soso.com/"
//                },
//                {
//                    "type":"miniprogram",
//                    "name":"wxa",
//                    "url":"http://mp.weixin.qq.com",
//                    "appid":"wx286b93c14bbf93aa",
//                    "pagepath":"pages/lunar/index.html",
//                },
//                {
//                    "type":"click",
//                    "name":"赞一下我们",
//                    "key":"V1001_GOOD"
//                }]
//            }]
//        }
       
       
       
       $res   = httpPost($url,$data);
       $arr   = json_decode($res,true);
       dump($arr);
   }
   
   //拉取用户信息
   function getUsers(){
       $token = $this->getToken();
       $id=2;
       $m=D('wx_wechat');
       $data=$m->find($id);
       $nextOpenid=$data['next_openid'];
       $url   = 'https://api.weixin.qq.com/cgi-bin/user/get?access_token='.$token.'&next_openid='.$nextOpenid;
       $res   = httpGet($url);
       $arr   = json_decode($res,true);
       $_POST['id']=$id;
       $_POST['total']=$arr['total'];
       $_POST['count']=$arr['count'];
       $_POST['next_openid']=$arr['next_openid'];
       $m->save($_POST);
       
       
       
   }
    
}