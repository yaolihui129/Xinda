<?php
namespace Xinda\Controller;
class WeixinController extends WebInfoController {    
    public function index(){//验证消息接口
        $nonce      = $_GET['nonce'];
        $token      = "123weixin";
        $timestamp  = $_GET['timestamp'];
        $echostr    = $_GET['echostr'];
        $signature  = $_GET['signature'];
        $array = array();
        $array = array($nonce,$timestamp,$token);               //形成数组,
        sort($array);                                           //按字典排序            
        $str =sha1(implode($array));                            //拼接成字符串，sha1加密,然后与signature进行校验
        if($str == $signature && $echostr){                     //第一次接入Weixin api 接口的时候            
            echo $echostr;
            exit;
        }else{
            $this->reponseMsg();
        }
    }    
    
    
    public function reponseMsg(){   //接收事件推送并回复    
        $postArr  = $GLOBALS['HTTP_RAW_POST_DATA'];                                  //1.获取到微信推送过来的post数据（xml格式）       
        $postObj  = simplexml_load_string( $postArr );                              //2.处理消息类型，并设置回复类型和内容
        $toUser   = $postObj->FromUserName;
        $fromUser = $postObj->ToUserName;               
        if(strtolower($postObj->MsgType) == 'event'){                                //判断该数据包是否是订阅的事件推送          
            if(strtolower($postObj->Event) == 'subscribe' ){                         //如果是关注subscrine事件
               $arr = array(//回复单图文消息
                   array(
                     'title'=>'北京智慧信达网络服务',
                     'description'=>"北京智慧信达商贸有限公司",
                     'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                     'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                   ),
                );
               wxReplyNews($toUser,$fromUser,$arr);
            }            
            if(strtolower($postObj->Event) == 'click' ){//自定义菜单“推”事件                             
                if(strtolower($postObj->EventKey) == 'item1' ){
                    $content   = '这是item1菜单的事件推送';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'songs' ){
                    $content   = '这是歌曲菜单的事件推送';
                    wxReplyText($toUser,$fromUser,$content);
                }
            }            
            if(strtolower($postObj->Event) == 'view' ){//自定义菜单跳转
                $content   = '跳转链接是：'.$postObj->EventKey;
                wxReplyText($toUser,$fromUser,$content);
            }           
//             if(strtolower($postObj->Event) == 'location'){//上传地理位置
                    //地理位置处理
//             }           
            if(strtolower($postObj->Event) == 'link'){ //上传链接                
                $Title   = $postObj->Title;                
                $Url     = $postObj->Url;
                $content = "<a href='". $Url."'>".$Title."</a>";  //回复用户消息(纯文本格式)
                wxReplyText($toUser,$fromUser,$content);   
            }                     
            if(strtolower($postObj->Event) == 'scan'){ //重扫二维码              
                if($postObj->EventKey == 200){ //临时二维码的参数值为200                   
                    $arr = array(
                        array(
                            'title'=>'北京智慧信达网络服务200',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);    //回复单图文消息
                }elseif($postObj->EventKey == 300){ //用久二维码的参数值为300                                    
                    $arr = array(
                        array(
                            'title'=>'北京智慧信达网络服务300',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);  //回复单图文消息
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
              
        if(strtolower($postObj->MsgType) == 'voice'){  //语音回复          
                //回复用户消息(纯文本格式)                
//                 $content   = "您说的是：“".$postObj->Recognition."”MediaId:".$postObj->MediaId;               
//                 wxReplyText($toUser,$fromUser,$content);
                //回复用户语音消息（语音）
                $mediaId = $postObj->MediaId; 
                wxReplyVoice($toUser,$fromUser,$mediaId);
        }
               
        if(strtolower($postObj->MsgType) == 'image'){ //图片消息回复
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
                
        if(strtolower($postObj->MsgType) == 'video'){       //视频消息回复    
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
        
        if(strtolower($postObj->MsgType) == 'shortvideo'){//小视频消息回复
            
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
        
        
        if ( strtolower($postObj->MsgType) == 'text'){    //关键字回复           
            if(trim($postObj->Content)=='智慧信达'){                                                           
                $arr = array(//多图文回复  
                    array(
                       'title'=>'北京智慧信达网络服务',
                       'description'=>"北京智慧信达商贸有限公司",
                       'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                       'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
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
                $where=array('key'=>trim($postObj->Content));
                $data=M('wx_key')->where($where)->select();
                if($data){
                    $content = $data[0]['content'];
                    wxReplyText($toUser,$fromUser,$content);
                }else {
                    //回复图文消息                   
                    $arr = array(                        
                        array(
                            'title'=>'没有找到与“'.$where['key'].'”相关的内容',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>'http://www.zhihuixinda.com/Upload/Xinda/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Index/index/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);
                }
            }                        
        }                               
    }
       
   //创建自定义菜单
   function creatCaidan() {      
       $postArr = array(  //组装数组                                     
           'button'=>array(
               array(//第一个一级菜单
                   'name' => urlencode('信达官网'),
                   'type' => 'click',
                   'key'  => 'item1',
               ),
               array(//第二个一级菜单
                    'name'=>urlencode('产品介绍'),
                    'sub_button'=>array(
                        array(//第一个二级菜单
                            'name' => urlencode('硬件产品'),
                            'type' => 'click',
                            'key'  => 'songs',
                        ),
                        array(//第二个二级菜单
                            'name' => urlencode('软件产品'),
                            'type' => 'view',
                            'url'  => 'http://www.zhihuixinda.com',
                        ),
                    ),
               ),
               array(//第三个一级菜单
                   'name' => urlencode('专属服务'),
                   'type' => 'view',
                   'url'  => 'http://www.zhihuixinda.com',
               ),
           ),           
       );
       
       $res = wxMenuCreat($this->getWxid(), $postArr);      
       $this->ajaxReturn($res);     
   }
   
   function info(){
       $res=getWxinfo($this->getWxid());
       dump($res);
       dump($this->getWxid());
   }
   function getMemu(){
       $res=wxMenuGet($this->getWxid());
       dump($res);      
   }
   //拉取用户信息
   function getUsers(){
       $res = wxGetUsers($this->getWxid());
       $this->ajaxReturn($res);
   }
   

   function qrCodeTime(){//getTimeQrCode($wxId,$scene_id,$expire=30)            
       $url=getTimeQrCode($this->getWxid(),200,15); 
       dump($url);
       echo "临时二维码";
       echo "<img src='".$url."'/>";      
   }
   
   function qrCodeForever(){//getForeverQrCode($wxId,$scene_id);       
       $url=getForeverQrCode($this->getWxid(),300);            
       echo "用久二维码";
       echo "<img src='".$url."'/>";  
   }
   
   function sendTemplateMsg(){
       $touser='oZQWOxPB-cAH37NlpBsB3CuRIwYU';
       $template_id='H5Xu84_YhAT0-IpaYdzWcNFAKb2V6P7-7f0EMA2TYcI';
       $call_url='http://www.zhihuixinda.com';
       $data=array(
              'name'=>array('value'=>'微信号申请','color'=>"#173177"),
              'money'=>array('value'=>100,'color'=>"#173177"),
              'date'=>array('value'=>date('Y-m-d H:i:s')),'color'=>"#173177"       
            );
       $res = wxSendTemplateMsg($this->getWxid(),$touser,$template_id,$call_url,$data);
       $this->ajaxReturn($res);      
   }
   
   //获取用户的openid
   function getBaseInfo(){
       $data  = getWxinfo($this->getWxid());
       $appid = $data['appid'];
       $redirect_uri = urlencode("http://www.zhihuixinda.com/index.php/Xinda/Weixin/getUserOpenid");
       $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$redirect_uri."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
       header('Location:'.$url);
       
   }
   function getUserOpenid(){
       $data      = getWxinfo($this->getWxid());
       $appid     = $data['appid'];
       $appsecret = $data['appsecret'];
       $code = $_GET['code'];
       $url= 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$appsecret.'&code='.$code.'&grant_type=authorization_code';
       $res = httpGet($url);
       $arr = json_decode($res,true);
       dump($arr);
   }
   function getUserDetail(){      
       $data         = getWxinfo($this->getWxid());
       $appid        = $data['appid'];            
       $redirect_uri = urlencode("http://www.zhihuixinda.com/index.php/Xinda/Weixin/getUserInfo");
       $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$redirect_uri."&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect";
       header('Location:'.$url);
       dump($url);
   }
   //获取用户的openid
   function getUserInfo(){
       $data      = getWxinfo($this->getWxid());
       $appid     = $data['appid'];
       $appsecret = $data['appsecret'];
       $code      = $_GET['code'];
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
      $array=array(//纯文本
          'touser'=>'oZQWOxElRgLz2KOBa6EAuDusWr1w',
          'text'=>array('content'=>urlencode('锻炼出来了吗？不用回复，我收不到的【腰】')),
          'msgtype'=>'text',
      );     
//       $array=array(//单图文
//           'touser'=>'oZQWOxElRgLz2KOBa6EAuDusWr1w',
//           'mpnews'=>array('media_id'=>''),
//           'msgtype'=>'mpnews',
//       );      
     $res = wxSendMsgAll($this->getWxid(),$array);//生产环境群发$type='send'
     $this->ajaxReturn($res);
   }
   
   public function jssdk(){      
       $arr=getWxinfo($this->getWxid());
       $this->assign('appid',$arr['appid']);       
       $timestamp=time();
       $nonceStr=getRandCode(16);//生成16位的随机数
       $jsapi_ticket=wxGetJsApiTicket($this->getWxid());//获取全局票据
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