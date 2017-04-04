<?php
namespace Xinda\Controller;
use Think\Controller;
class WeixinController extends Controller {
    
    public function index(){
        //获得参数 signature nonce token timestamp echostr
        $nonce      = $_GET['nonce'];
        $token      = "123weixin";
        $timestamp  = $_GET['timestamp'];
        $echostr    = $_GET['echostr'];
        $signature  = $_GET['signature'];
        //形成数组,然后按字典排序
        $array = array();
        $array = array($nonce,$timestamp,$token);
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
        $postObj  = simplexml_load_string( $postArr );
        $toUser   = $postObj->FromUserName;
        $fromUser = $postObj->ToUserName;        
        //判断该数据包是否是订阅的事件推送
        if(strtolower($postObj->MsgType) == 'event'){
            //如果是关注subscrine事件
            if(strtolower($postObj->Event) == 'subscribe' ){
                $content   = '欢迎关注智慧信达微信服务号，我们为您提供优质的网络服务';
                wxReplyText($toUser,$fromUser,$content);
            }
            //自定义菜单点击事件
            if(strtolower($postObj->Event) == 'click' ){
                if(strtolower($postObj->EventKey) == 'item1' ){
                    $content   = '这是item1菜单的事件推送';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'songs' ){
                    $content   = '这是歌曲菜单的事件推送';
                    wxReplyText($toUser,$fromUser,$content);
                }
            }
            //自定义菜单跳转
            if(strtolower($postObj->Event) == 'view' ){
                $content   = '跳转链接是：'.$postObj->EventKey;
                wxReplyText($toUser,$fromUser,$content);
            }
//             //上传地理位置
//             if(strtolower($postObj->Event) == 'location'){
//                 //回复用户消息(纯文本格式)
//                 $content   = $postObj->Precision."(".$postObj->Latitude.",".$postObj->Longitude.")";
//                 wxReplyText($toUser,$fromUser,$content);
//             }
            //上传链接
            if(strtolower($postObj->Event) == 'link'){
                //回复用户消息(纯文本格式)
                $Title= $postObj->Title;                
                $Url     = $postObj->Url;
                $content   = "<a href='". $Url."'>".$Title."</a>";
                wxReplyText($toUser,$fromUser,$content);   
            }
            
            //重扫二维码
            if(strtolower($postObj->Event) == 'scan'){
                //临时二维码的参数值为200
                if($postObj->EventKey == 200){
                    //回复单图文消息
                    $arr = array(
                        array(
                            'title'=>'北京智慧信达网络服务200',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);
                }elseif($postObj->EventKey == 300){ //用久二维码的参数值为300                  
                    //回复单图文消息
                    $arr = array(
                        array(
                            'title'=>'北京智慧信达网络服务300',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);
                }else {
                    //回复单图文消息
                    $arr = array(
                        array(
                            'title'=>'北京智慧信达网络服务',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);
                }
                
            }
        }
        
        //语音回复
        if(strtolower($postObj->MsgType) == 'voice'){            
                //回复用户消息(纯文本格式)                
//                 $content   = "您说的是：“".$postObj->Recognition."”MediaId:".$postObj->MediaId;               
//                 wxReplyText($toUser,$fromUser,$content);
                //回复用户语音消息（语音）
                $mediaId = $postObj->MediaId; 
                wxReplyVoice($toUser,$fromUser,$mediaId);
        }
        
        //图片消息回复
        if(strtolower($postObj->MsgType) == 'image'){
           //图片回复
//             $mediaId=$postObj->MediaId;
//             wxReplyPicText($toUser,$fromUser,$mediaId);
            $arr = array(
                array(
                    'title'=>'图片上传成功',
                    'description'=>"MediaId:".$postObj->MediaId,
                    'picUrl'=>$postObj->PicUrl,
                    'url'=>'http://www.zhihuixinda.com',
                ),
            );
            wxReplyNews($toUser,$fromUser,$arr);

        }
        
        //视频消息回复
        if(strtolower($postObj->MsgType) == 'video'){           
            $arr = array(
                array(
                    'title'=>'视频上传成功',
                    'description'=>"MediaId:".$postObj->MediaId,
                    'picUrl'=>$postObj->ThumbMediaId,
                    'url'=>'http://www.zhihuixinda.com',
                ),
            );
            wxReplyNews($toUser,$fromUser,$arr);
        }        
        //小视频消息回复
        if(strtolower($postObj->MsgType) == 'shortvideo'){
            
            $arr = array(
                array(
                    'title'=>'小视频上传成功',
                    'description'=>"MediaId:".$postObj->MediaId,
                    'picUrl'=>$postObj->ThumbMediaId,
                    'url'=>'http://www.zhihuixinda.com',
                ),
            );
            wxReplyNews($toUser,$fromUser,$arr);
        }
        
        //关键字回复
        if ( strtolower($postObj->MsgType) == 'text'){               
            if(trim($postObj->Content)=='智慧信达'){
                //多图文回复                                             
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
                wxReplyNews($toUser,$fromUser,$arr);          
            }else {                              
                $where['key']= trim($postObj->Content);
                $m=D('wx_key');
                $data=$m->where($where)->select();
                if($data){
                    $content = $data[0]['content'];
                    wxReplyText($toUser,$fromUser,$content);
                }else {
                    //回复图文消息                   
                    $arr = array(
                        array(
                            'title'=>'没有找到与“'.$where['key'].'”相关的内容',
                            'description'=>"欢迎登录北京智慧信达网络服务官网",
                            'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>'http://www.zhihuixinda.com',
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);
                }
            }                        
        }                               
    }
    
    //获取AccessToken
   public function getToken(){       
       $data = getWxAccessToken(1);
       return $data;
   }
   //获取微信服务器地址
   public function getWxServerIp() {
       //判定$_SESSION['wx_ip_list']
       if($_SESSION['wx_ip_list']){
           //如果$_SESSION['wx_ip_list']有值，什么也不做
       }else {
           //如果$_SESSION['wx_ip_list']没有值，获取服务器清单并复制给$_SESSION['wx_ip_list']
           $_SESSION['wx_ip_list'] = getWxServerIp(1);
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
   
   //创建自定义菜单
   function creatMenu() {
       $token   = $this->getToken();
       $url     = 'https://api.weixin.qq.com/cgi-bin/menu/create?access_token='.$token;
       $postArr = array(
           'button'=>array(
               array(
                   'name'=>urlencode('信达官网'),
                   'type'=>'click',
                   'key'=>'item1',
               ),//第一个一级菜单
               array(
                    'name'=>urlencode('产品介绍'),
                    'sub_button'=>array(
                        array(
                            'name'=>urlencode('硬件产品'),
                            'type'=>'click',
                            'key'=>'songs',
                        ),//第一个二级菜单
                        array(
                            'name'=>urlencode('软件产品'),
                            'type'=>'view',
                            'url'=>'http://www.zhihuixinda.com',
                        ),//第二个二级菜单
                    ),
               ),//第二个一级菜单
               array(
                   'name'=>urlencode('专属服务'),
                   'type'=>'view',
                   'url'=>'http://www.zhihuixinda.com',
               ),//第三个一级菜单
           ),           
       );
       $postJson = urldecode(json_encode($postArr));
       $res   = httpPost($url,$postJson);
       dump($res);
      
   }
   
   //拉取用户信息（认证后才可用）
   function getUsers(){
       $id=1;
       $token = getWxAccessToken($id);       
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
   

   function TimeQrCode(){
       $token=$this->getToken();   
       //getTimeQrCode($token,$scene_id,$expire=30)
       $url=getTimeQrCode($token,200,15); 
       dump($url);
       echo "临时二维码";
       echo "<img src='".$url."'/>";      
   }
   
   function ForeverQrCode(){
//        header('content-type:text/htm;charset=utf-8');
       //获取ticket全局票据
       $token = $this->getToken();
       //getForeverQrCode($token,$scene_id);
       $url=getForeverQrCode($token,300);            
       echo "用久二维码";
       echo "<img src='".$url."'/>";  
   }
   
   function sendTemplateMsg(){
       //获取到Access——token
       $token = $this->getToken();
       $url   = 'https://api.weixin.qq.com/cgi-bin/message/template/send?access_token='.$token;
       //2.组装数组
       $Meg = array(
          'touser'=>'oZQWOxPB-cAH37NlpBsB3CuRIwYU',
          'template_id'=>'H5Xu84_YhAT0-IpaYdzWcNFAKb2V6P7-7f0EMA2TYcI',
          'url'=>'http://www.zhihuixinda.com',
          'data'=>array(
          'name'=>array('value'=>'微信号申请','color'=>"#173177"),
          'money'=>array('value'=>100,'color'=>"#173177"),
          'date'=>array('value'=>date('Y-m-d H:i:s')),'color'=>"#173177")
       );
      
      //将数组转化成json
      $postJson =json_encode($Meg);  
      $res = httpPost($url, $postJson);
      dump($res);
   }
   
   //获取用户的openid
   function getBaseInfo(){
       $id=1;
       $m=D('wx_wechat');
       $data=$m->find($id);
       $appid = $data['appid'];
       $redirect_uri = urlencode("http://www.zhihuixinda.com/index.php/Xinda/Weixin/getUserOpenid");
       $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$redirect_uri."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
       header('Location:'.$url);
       
   }
   function getUserOpenid(){
       $id=1;
       $m=D('wx_wechat');
       $data=$m->find($id);
       $appid = $data['appid'];
       $appsecret = $data['appsecret'];
       $code = $_GET['code'];
       $url= 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$appsecret.'&code='.$code.'&grant_type=authorization_code';
       $res = httpGet($url);
       $arr = json_decode($res,true);
       dump($arr);
   }
   function getUserDetail(){
       $id=1;
       $m=D('wx_wechat');
       $data=$m->find($id);
       $appid = $data['appid'];            
       $redirect_uri = urlencode("http://www.zhihuixinda.com/index.php/Xinda/Weixin/getUserInfo");
       $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$redirect_uri."&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect";
       header('Location:'.$url);
       dump($url);
   }
   //获取用户的openid
   function getUserInfo(){
       $id=1;
       $m=D('wx_wechat');
       $data=$m->find($id);
       $appid = $data['appid'];
       $appsecret = $data['appsecret'];
       $code = $_GET['code'];
       $url= 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$appsecret.'&code='.$code.'&grant_type=authorization_code';
       $res = httpGet($url);
       $arr = json_decode($res,true);
       $token = $arr['access_token'];
       $openid = $arr['openid'];
       $url = 'https://api.weixin.qq.com/sns/userinfo?access_token='.$token.'&openid='.$openid.'&lang=zh_CN';
       $res = httpGet($url); 
       
       dump($arr);
       dump($openid);
       dump($url);
       dump($res);
   }
   //群发接口
   function sendMsgAll(){
      //1.获取Token
      $token=$this->getToken();
      $url='https://api.weixin.qq.com/cgi-bin/message/mass/preview?access_token='.$token;
      //2.组装数组
      //纯文本
      $array=array(
          'touser'=>'oZQWOxElRgLz2KOBa6EAuDusWr1w',
          'text'=>array(
              'content'=>urlencode('锻炼出来了吗？不用回复，我收不到的【腰】'),
          ),
          'msgtype'=>'text',
      );
//       //单图文
//       $array=array(
//           'touser'=>'oZQWOxElRgLz2KOBa6EAuDusWr1w',
//           'mpnews'=>array(
//               'media_id'=>'',
//           ),
//           'msgtype'=>'mpnews',
//       );
      
      //3.将array->json
      $postJson =urldecode(json_encode($array));
      //4.调用curl_post群发
      $res = httpPost($url, $postJson);
      dump($res);
       
   }
   
   public function jssdk(){
       $id=1;
       $m=D('wx_wechat');
       $arr=$m->find($id);
       $this->assign('appid',$arr['appid']);
       //微信所用的变量
       $timestamp=time();
       $nonceStr=getRandCode(16);//生成16位的随机数
       $jsapi_ticket=getJsApiTicket($id);//获取全局票据
       $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
       $url = "$protocol$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
       $signature = "jsapi_ticket=".$jsapi_ticket."&noncestr=".$nonceStr."&timestamp=".$timestamp."&url=".$url;
       $signature = sha1($signature);
       $this->assign('timestamp',$timestamp);
       $this->assign('nonceStr',$nonceStr);
       $this->assign('signature',$signature);
       dump($_SESSION);
        
       $this->display();
   }
    
}