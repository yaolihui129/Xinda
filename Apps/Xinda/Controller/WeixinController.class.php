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
        $postObj  = simplexml_load_string( $postArr );                               //2.处理消息类型，并设置回复类型和内容
        $toUser   = $postObj->FromUserName;
        $fromUser = $postObj->ToUserName;
        if(strtolower($postObj->MsgType) == 'event'){                                //判断该数据包是否是订阅的事件推送
            if(strtolower($postObj->Event) == 'subscribe' ){                         //如果是关注subscrine事件
                $arr = array(//回复单图文消息
                    array(
                        'title'=>'北京智慧信达网络服务',
                        'description'=>"北京智慧信达商贸有限公司",
                        'picUrl'=>C(WEBSERVER).'/Upload/'.C(PRODUCT).'/Product/2017-03-04/58ba72d2a8ee0.jpg',
                        'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Index/index/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                    ),
                );
                wxReplyNews($toUser,$fromUser,$arr);
            }
            if(strtolower($postObj->Event) == 'click' ){//自定义菜单“推”事件
                if(strtolower($postObj->EventKey) == 'item1' ){
                    $content   = '诚邀加盟';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'item2' ){//最新活动
                    $map['prodid']=C(PRODID);
                    $map['state']=5;
                    $data=M('tp_activity')->field('title,desc,img,id')->where($map)->order('utime desc')->limit(10)->select();
                    foreach ($data as $a){
                        $arr[]=[
                            'title'=>$a['title'],
                            'description'=>$a['desc'],
                            'picUrl'=>C(WEBSERVER).'/Upload/'.$a['img'],
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Activity/index/id/'.$a['id'].'/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                       ];     
                    }
                    wxReplyNews($toUser,$fromUser,$arr);
                }
                if(strtolower($postObj->EventKey) == 'item3' ){//最新政策
                    $map['prodid']=C(PRODID);
                    $map['state']=5;
                    $data=M('tp_policy')->field('title, desc ,img,id')->where($map)->order('utime desc')->limit(5)->select();
                    foreach ($data as $a){
                        $arr[]=[
                            'title'=>$a['title'],
                            'description'=>$a['desc'],
                            'picUrl'=>C(WEBSERVER).'/Upload/'.$a['img'],
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Activity/index/id/'.$a['id'].'/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ];
                    }
                    wxReplyNews($toUser,$fromUser,$arr);
                }
                if(strtolower($postObj->EventKey) == 'item4' ){
                    $content   = '积分商城';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'item5' ){
                    $content   = '我的订单';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'item6' ){
                    $content   = '优惠券';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'item7' ){
                    $content   = 'item7';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'item8' ){
                    $content   = 'item8';
                    wxReplyText($toUser,$fromUser,$content);
                }
                if(strtolower($postObj->EventKey) == 'item9' ){
                    $content   = 'item9';
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
                            'picUrl'=>C(WEBSERVER).'/Upload/'.C(PRODUCT).'/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);    //回复单图文消息
                }elseif($postObj->EventKey == 300){ //用久二维码的参数值为300
                    $arr = array(
                        array(
                            'title'=>'北京智慧信达网络服务300',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>C(WEBSERVER).'/Upload/'.C(PRODUCT).'/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);  //回复单图文消息
                }else {
                    //回复单图文消息
                    $arr = array(
                        array(
                            'title'=>'北京智慧信达网络服务',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>C(WEBSERVER).'/Upload/'.C(PRODUCT).'/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Index/index/openid/'.$toUser,
                        ),
                    );
                    wxReplyNews($toUser,$fromUser,$arr);
                }
            }
        }
    
        if(strtolower($postObj->MsgType) == 'voice'){  //语音回复
            $text=rtrim($postObj->Recognition,'。');//截取最后的“。”
        if($text=='活动名称'){//从活动表查找相关               
                $data=M('tp_page')->field('name, content,img,id')->where($map)->order('sn')->limit(10)->select();
                if($data){
                    foreach ($data as $a){
                        $arr[]=[
                            'title'=>$a['title'],
                            'description'=>$a['desc'],
                            'picUrl'=>C(WEBSERVER).'/Upload/'.$a['img'],
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Page/index/id/'.$a['id'].'/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ];
                    }                                        
                }
            }else {//从产品表查找相关
                $map['name']=array('like','%'.$text.'%');
                $map['prodid']=C(PRODID);
                $map['state']=5;
                $data=M('tp_product')->field('name, content , img,id')->where($map)->order('sn')->limit(10)->select();
                if($data){
                    foreach ($data as $a){
                        $arr[]=[
                            'title'=>$a['name'],
                            'description'=>$a['content'],
                            'picUrl'=>C(WEBSERVER).'/Upload/'.$a['img'],
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Service/index/id/'.$a['id'].'/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ];
                    }                   
                }else{//没找到你要的商品或服务
                    $arr = array(
                        array(
                            'title'=>'没有找到与“'.$text.'”相关的商品或服务',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>C(WEBSERVER).'/Upload/'.C(PRODUCT).'/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Index/index/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ),
                    );
                }
            }
    
            wxReplyNews($toUser,$fromUser,$arr);
            //回复用户消息(纯文本格式)
            $content   = "您说的是：“".$text."”MediaId:".$postObj->MediaId;
            wxReplyText($toUser,$fromUser,$content);
            //回复用户语音消息（语音）
            //                 $mediaId = $postObj->MediaId;
            //                 wxReplyVoice($toUser,$fromUser,$mediaId);
        }
        
        if ( strtolower($postObj->MsgType) == 'text'){    //关键字回复
            $text=trim($postObj->Content);           
            if($text=='活动名称'){//从活动表查找相关               
                $data=M('tp_page')->field('name, content,img,id')->where($map)->order('sn')->limit(10)->select();
                if($data){
                    foreach ($data as $a){
                        $arr[]=[
                            'title'=>$a['title'],
                            'description'=>$a['desc'],
                            'picUrl'=>C(WEBSERVER).'/Upload/'.$a['img'],
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Page/index/id/'.$a['id'].'/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ];
                    }   
                }
            }else {//从产品表查找相关
                $map['name']=array('like','%'.$text.'%');
                $map['prodid']=C(PRODID);
                $map['state']=5;
                $data=M('tp_product')->field('name, content , img,id')->where($map)->order('sn')->limit(10)->select();
                if($data){
                    foreach ($data as $a){
                        $arr[]=[
                            'title'=>$a['name'],
                            'description'=>$a['content'],
                            'picUrl'=>C(WEBSERVER).'/Upload/'.$a['img'],
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Service/index/id/'.$a['id'].'/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ];
                    }   
                }else{//没找到你要的商品或服务
                    $arr = array(
                        array(
                            'title'=>'没有找到与“'.$text.'”相关的商品或服务',
                            'description'=>"北京智慧信达商贸有限公司",
                            'picUrl'=>C(WEBSERVER).'/Upload/'.C(PRODUCT).'/Product/2017-03-04/58ba72d2a8ee0.jpg',
                            'url'=>C(WEBSERVER).'/index.php/'.C(PRODUCT).'/Index/index/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                        ),
                    );
                }
            }
            wxReplyNews($toUser,$fromUser,$arr);
             
        }
        
        
        if(strtolower($postObj->MsgType) == 'image'){ //图片消息回复
            $arr = array(
                array(
                    'title'=>'图片上传成功',
                    'description'=>"MediaId:".$postObj->MediaId,
                    'picUrl'=>$postObj->PicUrl,
                    'url'=>C(WEBSERVER),
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
                    'url'=>C(WEBSERVER),
                ),
            );
            wxReplyNews($toUser,$fromUser,$arr);
        } 
    }
    
    function memuCreat() {//创建自定义菜单
       
        $postJson=C('wx_mume');
        $res = wxMenuCreat($this->getAccessToken(),$postJson);
        $this->ajaxReturn($res);
    }
     
    function memu(){
        dump(wxGetMenu($this->getAccessToken()));
        $this->assign('arr',wxGetMenu($this->getAccessToken()));
        $this->display();
    }

    
    function qrCodeTime($id,$day=30){//getTimeQrCode($wxId,$scene_id,$expire=30)
        $url=getTimeQrCode($this->getAccessToken(),$id,$day);
        dump($url);
        echo "临时二维码";
        echo "<img src='".$url."'/>";
    }
     
    function qrCodeForever($id){//getForeverQrCode($wxId,$scene_id);
        $url=getForeverQrCode($this->getAccessToken(),$id);
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
        $res = wxSendTemplateMsg($this->getAccessToken(),$touser,$template_id,$call_url,$data);
        $this->ajaxReturn($res);
    }
     
    //获取用户的openid
    function getBaseInfo(){
        $appid = C(WX_APPID);
        $redirect_uri = urlencode(C(WEBSERVER)."/index.php/".C(PRODUCT)."/Weixin/getUserOpenid");
        $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$redirect_uri."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
        header('Location:'.$url);
         
    }
    function getUserOpenid(){
        $appid     = C(WX_APPID);
        $appsecret = C(WX_APPSECRET);
        $code = $_GET['code'];
        $url= 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$appsecret.'&code='.$code.'&grant_type=authorization_code';
        $res = httpGet($url);
        $arr = json_decode($res,true);
        dump($arr);
    }
    function getUserDetail(){
        $appid        = C(WX_APPID);
        $redirect_uri = urlencode(C(WEBSERVER)."/index.php/".C(PRODUCT)."/Weixin/getUserInfo");
        $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$redirect_uri."&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect";
        header('Location:'.$url);
        dump($url);
    }
    //获取用户的openid
    function getUserInfo(){
        $appid     = C(WX_APPID);
        $appsecret = C(WX_APPSECRET);
        $code      = $_GET['code'];
        $url= 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$appsecret.'&code='.$code.'&grant_type=authorization_code';
        $res = httpGet($url);
        $arr = json_decode($res,true);
        $token = $arr['access_token'];
        $openid = $arr['openid'];
        $url = 'https://api.weixin.qq.com/sns/userinfo?access_token='.$token.'&openid='.$openid.'&lang=zh_CN';
        $res = httpGet($url);
         
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
        $res = wxSendMsgAll($this->getAccessToken(),$array);//生产环境群发$type='send'
        $this->ajaxReturn($res);
    }
     
    //获取微信AccessToken
    function getAccessToken(){
        $m=D('wx_wechat');
        $var=$m->where(array('appid'=>C(WX_APPID)))->find();
        if(time()>$var['otime']){//如果access_token过期，重新获取
            $appid     = C(WX_APPID);
            $appsecret = C(WX_APPSECRET);
            $url       = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$appid.'&secret='.$appsecret;
            $arr       = json_decode(httpGet($url), true);
            $data      = array('id'=> $var['id'],'access_token' => $arr['access_token'],'otime'=> (time()+7000));
            $m->save($data);//更新AccessToken
            return $arr['access_token'];
        }else {//如果access_token没有过期，直接从数据库中取值
            return $var['access_token'];
        }
    }
     
    //拉取用户信息（认证后才可用）
    function getWXUsers(){
        $token= $this->getAccessToken();
        $m=D('wx_wechat');
        $data=$m->where(array('appid'=>C(WX_APPID)))->find();
        $nextOpenid = $data['next_openid'];
        $url        = 'https://api.weixin.qq.com/cgi-bin/user/get?access_token='.$token.'&next_openid='.$nextOpenid;
        $res        = httpGet($url);
        $arr        = json_decode($res,true);
        $data       = array('id'=>$data['id'],'total'=>$arr['total'],'count'=>$arr['count'],'next_openid',$arr['next_openid']);
        $m->save($data);//更新数据
    }
    
}