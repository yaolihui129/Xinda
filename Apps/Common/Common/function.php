<?php
    // 根据id获取状态
    function getState($id){
        $data=M('dict')->find($id);        
        return $data['v'];   
    }
    //获取ProductID
    function getProdId($qz){
        $data=M('product')->where(array('qz'=>$qz))->find();
        return $data['id'];
    }
    //获取页面信息
    function getWebInfo($qz){//获取页面信息
        $data=M('product')->where(array('qz'=>$qz))->field('web,adress,desc,phone,tel,qq,qz,url,record,path,img')->find();
        $_SESSION[$qz]=$data;
        $_SESSION[$qz]['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    }
    

   function login($qz,$phone,$password){
        $where=array('phone'=>$phone,['password']=>md5($password));
        $data=M('tp_customer')->where($where)->field('id,phone,realname')->find();
        if ($data){
            $_SESSION['userid']  = $data['id'];
            $_SESSION['uphone']  = $data['phone'];
            $_SESSION['realname']= $data['realname'];
            $_SESSION['isCLogin']= $qz;           
            return 1;
        }else{
            return 0;
        }
    }
    
    function logout(){
        
        $_SESSION = array();
        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }
        session_destroy();// 销毁sesstion
        
    
    }

    //根据id获取客户电话
    function getCusPhone($id){
        $arr=M('tp_customer')->find($id);        
        return $arr['phone'];        
    }

    //根据id获取客户姓名
    function getCusName($id){
       $arr=M('tp_customer')->find($id);
       return $arr['realname'];        
    }
    
    //获取自定义菜单
    function wxMenuGet($appID) {
        $token = wxGetAccessToken($appID);
        $url   = 'https://api.weixin.qq.com/cgi-bin/menu/get?access_token='.$token;
        $res   = httpGet($url);
        $arr   = json_decode($res,true);
        return $arr;
    }
    
    //创建自定义菜单
    function wxMenuCreat($appID,$postArr) {
        $token    = wxGetAccessToken($appID);
        $url      = 'https://api.weixin.qq.com/cgi-bin/menu/create?access_token='.$token;
        $postJson = urldecode(json_encode($postArr));
        $res      = httpPost($url,$postJson);
        $res      = json_decode($postJson,true);
        return $res;       
    }

    //根据id获取活动信息
    function getVoucher($id){
        $arr=M('voucher')->find($id);
        $str.=$arr['title']."：";
            $str.="奖券数【".$arr['total']."】"
                  ."特等奖【".$arr['specia']."】，"
                  ."一等奖【".$arr['first']."】，" 
                  ."二等奖【".$arr['second']."】，"
                  ."三等奖【".$arr['third']."】，"
                  ."参与奖【".$arr['canyu']."】";       
        return $str;
    }
    
    // 根据id获取奖券数
    function countTickets($id){
        $where=array("voucherid"=>$id);
        $c=M('tickets')->where($where)->count();
        return $c;  
    }

    //获得访客浏览器类型
    function GetBrowser(){
        if(!empty($_SERVER['HTTP_USER_AGENT'])){
            $br = $_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/MSIE/i',$br)) {
                $br = 'MSIE';
            }elseif (preg_match('/Firefox/i',$br)) {
                $br = 'Firefox';
            }elseif (preg_match('/Chrome/i',$br)) {
                $br = 'Chrome';
            }elseif (preg_match('/Safari/i',$br)) {
                $br = 'Safari';
            }elseif (preg_match('/Opera/i',$br)) {
                $br = 'Opera';
            }else {
                $br = 'Other';
            }
            return $br;
        }else{return "获取浏览器信息失败！";}
    }
    
    //获得访客浏览器语言
    function GetLang(){
        if(!empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])){
            $lang = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
            $lang = substr($lang,0,5);
            if(preg_match("/zh-cn/i",$lang)){
                $lang = "简体中文";
            }elseif(preg_match("/zh/i",$lang)){
                $lang = "繁体中文";
            }else{
                $lang = "English";
            }
            return $lang;
        }else{return "获取浏览器语言失败！";}
    }

    //获取访客操作系统
    function GetOs(){
        if(!empty($_SERVER['HTTP_USER_AGENT'])){
            $OS = $_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/win/i',$OS)) {
                $OS = 'Windows';
            }elseif (preg_match('/mac/i',$OS)) {
                $OS = 'MAC';
            }elseif (preg_match('/linux/i',$OS)) {
                $OS = 'Linux';
            }elseif (preg_match('/unix/i',$OS)) {
                $OS = 'Unix';
            }elseif (preg_match('/bsd/i',$OS)) {
                $OS = 'BSD';
            }else {
                $OS = 'Other';
            }
            return $OS;
        }else{return "获取访客操作系统信息失败！";}
    }

    //获取随机码
    function getRandCode($length){
        $array = array(
            'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            '0','1','2','3','4','5','6','8','9'
        );
        $tmpstr ='';
        $max =count($array);
        for($i=1;$i<=$length;$i++){
            $key =rand(0,$max-1);
            $tmpstr.=$array[$key];
        }
        return $tmpstr;
    }

    // CURL_GET操作
    function httpGet($url){       
        $ch=curl_init(); //1.获取初始化URL
        //2.设置curl的参数
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, 500);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_URL, $url);       
        $res = curl_exec($ch);//3.采集        
        curl_close($ch);//4.关闭
        if(curl_errno($ch)){
            $res=curl_errno($ch);
        }
        return $res;
    }
    // CURL_GET操作
    function httpPost($url,$postJson){    
        $ch=curl_init();//1.获取初始化URL
        //2.设置curl的参数
        curl_setopt($ch, CURLOPT_TIMEOUT, 500);       //设置超时时间   
        curl_setopt($ch, CURLOPT_URL, $url);          //设置抓取的url   
        curl_setopt($curl, CURLOPT_HEADER, 1);        //设置头文件的信息作为数据流输出   
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);  //设置获取的信息以文件流的形式返回，而不是直接输出。 
        curl_setopt($ch, CURLOPT_POST, 1);            //设置post方式提交   
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postJson);//post变量    
        $res = curl_exec($ch);//3.采集   
        curl_close($ch);//4.关闭
        if(curl_errno($ch)){
            $res=curl_errno($ch);
        }
        return $res;    
    }

    //微信纯文本回复
    function wxReplyText($toUser,$fromUser,$content){
        //回复用户消息(纯文本格式)
        $msgType   = 'text';    
        $time      = time();
        $template  ="<xml>
                     <ToUserName><![CDATA[%s]]></ToUserName>
                     <FromUserName><![CDATA[%s]]></FromUserName>
                     <CreateTime>%s</CreateTime>
                     <MsgType><![CDATA[%s]]></MsgType>
                     <Content><![CDATA[%s]]></Content>
                     </xml>";
        echo sprintf($template,$toUser,$fromUser,$time,$msgType,$content);
    }

    //微信图文回复
    function wxReplyNews($toUser,$fromUser,$arr){
        $msgType   = 'news';
        $time      = time();    
        $template = "<xml>
        				<ToUserName><![CDATA[%s]]></ToUserName>
        				<FromUserName><![CDATA[%s]]></FromUserName>
        				<CreateTime>%s</CreateTime>
        				<MsgType><![CDATA[%s]]></MsgType>
        				<ArticleCount>".count($arr)."</ArticleCount>
        				<Articles>";
        foreach($arr as $v){
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
        
    }

    //微信图片回复
    function wxReplyImage($toUser,$fromUser,$mediaId){
        $msgType   = 'image';
        $time      = time();
        $template = "<xml>
                        <ToUserName><![CDATA[%s]]></ToUserName>
                        <FromUserName><![CDATA[%s]]></FromUserName>
                        <CreateTime>%s</CreateTime>
                        <MsgType><![CDATA[%s]]></MsgType>
                        <Image><MediaId><![CDATA[%s]]></MediaId></Image>
                    </xml>";
        echo sprintf($template, $toUser, $fromUser, $time, $msgType,$mediaId);
    }
    
    //微信语音回复
    function wxReplyVoice($toUser,$fromUser,$mediaId){
        $msgType   = 'voice';
        $time      = time();
        $template  = "<xml>
                        <ToUserName><![CDATA[%s]]></ToUserName>
                        <FromUserName><![CDATA[%s]]></FromUserName>
                        <CreateTime>%s</CreateTime>
                        <MsgType><![CDATA[%s]]></MsgType>
                        <Voice><MediaId><![CDATA[%s]]></MediaId></Voice>
                    </xml>";
        echo sprintf($template, $toUser, $fromUser, $time, $msgType,$mediaId);
    }
    
    //微信视频回复
    function wxReplyVideo($toUser,$fromUser,$mediaId,$title,$description){
        $msgType   = 'video';
        $time      = time();
        $template = "<xml>
                        <ToUserName><![CDATA[%s]]></ToUserName>
                        <FromUserName><![CDATA[%s]]></FromUserName>
                        <CreateTime>%s</CreateTime>
                        <MsgType><![CDATA[%s]]></MsgType>
                        <Video>
                            <MediaId><![CDATA[%s]]></MediaId>
                            <Title><![CDATA[%s]]></Title>
                            <Description><![CDATA[%s]]></Description>
                        </Video>                
                    </xml>";
        echo sprintf($template, $toUser, $fromUser, $time, $msgType,$mediaId,$title,$description);
    }
    
    //微信音乐回复
    function wxReplyMusic($toUser,$fromUser,$mediaId,$title,$description,$musicUrl,$HQMusicUrl,$thumbMediaId){
        $msgType   = 'music';
        $time      = time();
        $template = "<xml>
                        <ToUserName><![CDATA[%s]]></ToUserName>
                        <FromUserName><![CDATA[%s]]></FromUserName>
                        <CreateTime>%s</CreateTime>
                        <MsgType><![CDATA[%s]]></MsgType>
                        <Music>
                            <Title><![CDATA[%s]]></Title>
                            <Description><![CDATA[%s]]></Description>
                            <MusicUrl><![CDATA[%s]]></MusicUrl>
                            <HQMusicUrl><![CDATA[%s]]></HQMusicUrl>
                            <ThumbMediaId><![CDATA[%s]]></ThumbMediaId>
                        </Music>
                      </xml>";
        echo sprintf($template, $toUser, $fromUser, $time, $msgType,$title,$description,$musicUrl,$HQMusicUrl,$thumbMediaId);
    }

    //换取微信短链接
    function getShortUrl($token,$long_url){
        $url='https://api.weixin.qq.com/cgi-bin/shorturl?access_token='.$token;
        $array=array('action'=>'long2short','long_url'=>$long_url );                        //组装数组
        $postJson = json_encode($array);                                                    //封装json
        $res = httpPost($url, $postJson);
        $res = json_decode($res,true);    
        return $res['short_url'];
    }
    
    //获取临时二维码
    function getTimeQrCode($appID,$scene_id,$expire=30){ 
        $token = wxGetAccessToken($appID);
        $url='https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token='.$token;
        $expire = $expire*24*60*60;
        $postArr =array(                                                                //组装数组
            'expire_seconds'=>$expire,
            'action_name'=>"QR_SCENE",
            'action_info'=>array('scene'=>array('scene_id'=>$scene_id) )
        );    
        $postJson = json_encode($postArr);                                              //封装json        
        $res = httpPost($url, $postJson);                                               //获取 $ticket
        $res = json_decode($res,true);                                                  //转换成数组          
        $long_url='https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket='.$res['ticket']; //使用$ticket换去二维码图片          
        return getShortUrl($token,$long_url);
    }

    //获取临时二维码
    function getForeverQrCode($appID,$scene_id){ 
        $token = wxGetAccessToken($appID);
        $url='https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token='.$token;        
        $postArr =array(                                                                //1.组装数组
            'action_name'=>"QR_LIMIT_SCENE",
            'action_info'=>array('scene'=>array('scene_id'=>$scene_id))
        );
        $postJson = json_encode($postArr);                                              //2.封装json     
        $res = httpPost($url, $postJson);
        $res = json_decode($res,true);        
        $long_url='https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket='.$res['ticket']; //3.使用$ticket换去二维码图片
        return getShortUrl($token,$long_url);
    }
    function wxLogin($qz,$db,$appid,$openid){//微信公众账号免登陆
        if($openid){//如果有$_GET['wxOpenId']就直接登录
            $map=array('wxopenid'=>$openid);
            $m=D($db.'customer');
            $arr=$m->where($map)->find();
            if($arr){//如果用户表有值，直接登录
                $_SESSION['userid']   = $arr['tpid'];
                $_SESSION['isCLogin'] = $qz;
                if($arr[0]['tpid']==0){//如果绑定手机号
                    $_SESSION['realname'] = '游客';
                }else{//如果未绑定手机号
                    $_SESSION['uphone']   = getCusPhone($arr['tpid']);
                    $_SESSION['realname'] = getCusName($arr['tpid']);
                }
            }else{//如果用户表没有值，向用户表插入数据
                $_POST['wxopenid']=$_GET['wxOpenId'];
                $_POST['wxappid']=$appid;
                $_POST['adder']=$appid;
                $_POST['moder']=$appid;
                $_POST['ctime']=time();
                $m->create();
                $m->add();
                $arr=$m->where($map)->select();
                $_SESSION['userid']   = $arr['tpid'];
                $_SESSION['isCLogin'] = $qz;
                $_SESSION['realname'] = '游客';
            }
            return ;
        }
    
    }
    //获取微信AccessToken
    function wxGetAccessToken($appID){
        $arr=getWxinfo($appID);        
        if((time() - $arr['otime'])>0){                     //如果access_token过期，重新获取          
            $appid     = $appID;
            $appsecret = $arr['appsecret'];
            $url       = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$appid.'&secret='.$appsecret;
            $arr       = json_decode(httpGet($url), true);
            $data      = array('id'=> $arr['id'],'access_token' => $arr['access_token'],'otime'=> time()+7000);         
            M('wx_wechat')->save($data);                    //更新AccessToken            
            return $data['access_token'];    
        }else {                                             //如果access_token没有过期，直接从数据库中取值            
            return $arr['access_token'];           
        }
    }
    
    //群发接口
    function wxSendMsgAll($appID,$array,$type='preview'){        
        $token=wxGetAccessToken($appID); //1.获取Token
        if($type=='preview'){           //预览接口           
            $url='https://api.weixin.qq.com/cgi-bin/message/mass/preview?access_token='.$token;
            $postJson =urldecode(json_encode($array));
            $res = httpPost($url, $postJson);
            return $res;
        }elseif ($type=='send'){        //群发接口
            $url='https://api.weixin.qq.com/cgi-bin/message/mass/send?access_token='.$token;
            $postJson =urldecode(json_encode($array));
            $res = httpPost($url, $postJson);
            return $res;
        }else {
            return '发送类型不合规！';
        }       
    }
    
    //获取微信公众号信息
    function getWxinfo($appID){
        $data=D('wx_wechat')->where(array('appid'=>$appID))->find();
        return $data;
    }
    
    //拉取用户信息（认证后才可用）
    function wxGetUsers($appID){
        $token      = wxGetAccessToken($appID);         
        $data       = getWxinfo($appID);
        $nextOpenid = $data['next_openid'];
        $url        = 'https://api.weixin.qq.com/cgi-bin/user/get?access_token='.$token.'&next_openid='.$nextOpenid;
        $res        = httpGet($url);
        $arr        = json_decode($res,true);
        $data       = array('id'=>$data['id'],'total'=>$arr['total'],'count'=>$arr['count'],'next_openid',$arr['next_openid']);
        M('wx_wechat')->save($_POST);//更新数据
        return $arr;
    }
    
    //获取wxGetJsApiTicket全局票据
    function wxGetJsApiTicket($appID){ 
        if ((time()-$_SESSION['jsapi_ticket_expire_time']) < 0){//从session中取值  jsapi_ticket         
            $jsapi_ticket = $_SESSION['jsapi_ticket'];        
        }else {//重新获取jsapi_ticket
            $access_token = wxGetAccessToken($appID);
            $url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=".$access_token."&type=jsapi";
            $res =json_decode(httpGet($url),true);
            $_SESSION['jsapi_ticket']=$res['ticket'];
            $_SESSION['jsapi_ticket_expire_time']=time()+7000;
            $jsapi_ticket=$res['ticket'];
        }
        return $jsapi_ticket;
    }

    //获取微信服务器IP
    function wxGetServerIp($appID){
        if($_SESSION['wx_ip_list']){
            //如果$_SESSION['wx_ip_list']有值，什么也不做
        }else {//如果$_SESSION['wx_ip_list']没有值，获取服务器清单并复制给$_SESSION['wx_ip_list']            
            $token = wxGetAccessToken($appID);
            $url = "https://api.weixin.qq.com/cgi-bin/getcallbackip?access_token=".$token;
            $res = httpGet($url);
            $_SESSION['wx_ip_list'] =json_decode($res,true);
        } 
        return $_SESSION['wx_ip_list'];
    }
    //发送微信模板消息
    function wxSendTemplateMsg($appID,$touser,$template_id,$call_url,$data){        
        $token    =  wxGetAccessToken($appID);   //1.获取Token
        $url      = 'https://api.weixin.qq.com/cgi-bin/message/template/send?access_token='.$token;               
        $Meg      = array('touser'=>$touser,'template_id'=>$template_id,'url'=>$call_url,'data'=>$data);   //2.组装数组      
        $postJson = json_encode($Meg);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }

    //根据日期获取星期
    function   wk($date) {
            $datearr = explode("-",$date);     //将传来的时间使用“-”分割成数组
            $year = $datearr[0];       //获取年份
            $month = sprintf('%02d',$datearr[1]);  //获取月份
            $day = sprintf('%02d',$datearr[2]);      //获取日期
            $hour = $minute = $second = 0;   //默认时分秒均为0
            $dayofweek = mktime($hour,$minute,$second,$month,$day,$year);    //将时间转换成时间戳
            $shuchu = date("w",$dayofweek);      //获取星期值
            $weekarray=array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
            return  $weekarray[$shuchu];
     }
    
    //根据funcid获取测试数据
    function getTest($funcid){        
        $where=array('funcid'=>$funcid);
        $arr=D('tp_exefunc')->where($where)->order('updateTime desc')->limit(15)->select();
        $str.='<ul class="list-group">';
                    foreach ($arr as $ar){
                          $str.='<li class="list-group-item"><span class=badge>'.$ar['result'].'</span>'
                                            .getExescene($ar['exesceneid']).';'
                                            .getFunc($ar['funcid']);
                                      $str.='('.$ar['funcremarks'].')'.'备注：'.$ar['remark'].'<br>
                                            <b>意图：</b>'.$ar['casemain'];
                                      if($ar['caseexpected']){
                                            $str.=";<b>预期：</b>".$ar['caseexpected'];
                                      }
                                      if($ar['bugid']){
                                            $str.="&nbsp;BUGid:".$ar['bugid'];
                                      }               
                                      $str.='<span class="badge">'.$ar['updatetime'].'</span>'
                                .'</li>';
                    }   
        $str.='</ul>';
        return $str;
    }

    //根据id获取功能名
    function getFunc($funcid){
        $data=M('tp_func')->find($funcid);
        return $data['func'];       
    }

    //根据funcid获取功能结果
    function getFResult($funcid){
        $data=M('tp_func')->find($funcid);
        return $data['result'];
        
    }

    //更具funcid获取项目用例
    function getPFCase($funcid){   
        $where=array('funcid'=>$funcid,'state'=>'正常','fproid'=>$_SESSION['proid']);
        $arr=D('tp_case')->where($where)->order('sn,id')->select();  
        $str.='<ul class="list-group">';
                foreach ($arr as $ar){
                     $str.='<li class="list-group-item">';
                     $str.=    $ar['id'].".<b>意图：</b>".$ar['main'].";<b>预期：</b>".$ar['expected']
                              .'<span class="badge">'.$ar['adder'].':'.$ar['updatetime'].'</span>';
                     $str.='</li>';
                 }
         $str.='</ul>';     
        return $str;       
    }
    
   //根据proid获取风险数
    function countRisk($proid){
        $where=array("proid"=>$proid);
        $count=M("tp_risk")->where($where)->count();
        return $count;
    }

    //状态选择控件,@param $name 控件name;@param $value 选中值
    function formselect($value="正常",$name="state",$type="state") {
        $where=array("type"=>$type,"state"=>"正常");
        $cats = M('dict')->where($where)->order('k')->select();        
        $html = '<select name="'.$name.'" class="form-control">';        
                    foreach($cats as $v) {
                        $selected = ($v['v']==$value) ? "selected" : "";
                        $html .= '<option '.$selected.' value="'.$v['v'].'">'.$v['v'].'</option>';
                    }
        $html .='<select>';
        return $html;
    }  
    //状态选择控件,@param $name 控件name;@param $value 选中值
    function formSV($value="正常",$name="state",$type="state") {
        $where=array("type"=>$type,"state"=>"正常");
        $cats = M('dict')->where($where)->order('k')->select();
        $html = '<select name="'.$name.'" class="form-control">';
                foreach($cats as $v) {
                    $selected = ($v['v']==$value) ? "selected" : "";
                    $html .= '<option '.$selected.' value="'.$v['k'].'">'.$v['v'].'</option>';
                }
        $html .='<select>';
        return $html;
    }

    // 根据id获取项目信息
    function getPro($projectid){
        $data=M('project')->find($projectid); 
        return $data['name']."(".$data['end']."上线)";  
    } 
    
    //根据prodid 获取机构名称
    function getProduct($prodid){
        $data=M('product')->find($prodid);
        return $data['name'];
    }
    
    // 根据id获取项目信息
    function getProname($proid){
        $data=M('project')->find($proid);
        return $data['name'];        
    }   
    
    //根据id获取项目编号
    function getProNo($proid){
        $data=M('project')->find($proid);   
        return $data['code'];        
    }
    
    //根据branchid获取路径数   
    function countPath($branchid){
        $where=array("branch"=>$branchid);
        $count=M("module")->where($where)->count();
        return $count;
    }
        
    // 根据$testgp获取项目数     
    function countPro($testgp){
        $where=array("testgp"=>$testgp);
        $count=M("project")->where($where)->count();
        return $count;
    }
    
    //根据project获取系统数
    function countProsys($project){
        $where=array("project"=>$project);
        $count=M("tp_prosys")->where($where)->count();
        return $count;
    }

    //根据$stageid获取测试人员
    function countATester($stageid){
        $where=array("stageid"=>$stageid,"type"=>"A");
        $count=M("tp_stagetester")->where($where)->count();
        return $count;
    }
    
    //自动化执行场景数
    function countAExescene($Tester){
        $where=array('zt_tp_stagetester.tester'=>$Tester,'zt_tp_stagetester.type'=>'A','zt_project.status'=>'doing','zt_tp_stage.state'=>'进行中','zt_tp_exescene.results'=>'未测试');
        $count=M("project")->where($where)->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
                ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
                ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
                ->count();
        return $count;
    }

    //手工执行场景数
    function countMExescene($Tester){
        $where=array('zt_tp_stagetester.tester'=>$Tester,'zt_tp_stagetester.type'=>'M','zt_project.status'=>'doing','zt_tp_stage.state'=>'进行中','zt_tp_exescene.results'=>'未测试');
        $count=M("project")->where($where)->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
            ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
            ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
            ->count();
        return $count;
    }
    
    //根据$stageid获取测试人员
    function countCTester($id){
        $where=array("stageid"=>$id,"type"=>"C");
        $count=M("tp_stagetester")->where($where)->count();
        return $count;
    }
    
    //根据$stageid获取测试人员
    function countMTester($id){
        $where=array("stageid"=>$id,"type"=>"M");
        $count=M("tp_stagetester")->where($where)->count();
        return $count;
    }

    //根据$stageid获取里程碑信息
    function getStage($stageid){
        $data=M('tp_stage')->find($stageid);
        return $data['sn'].'.'.$data['stage']."【".$data['state']."】";       
    }        
    //根据$stagetesterid获取执行人信息
    function getStagetester($stagetesterid){
        $arr=M("tp_stagetester")->find($stagetesterid);
        $str.=getStage($arr['stageid']);
        $str.='<span class="label label-info">'.$arr['tester'].'</span>';
        return $str;
    }    
    
    //根据$exesceneid获取执行场景信息
    function getExescene($exesceneid){      
        $arr=M("tp_exescene")->find($exesceneid);
        $str.=getStagetester($arr['stagetesterid']).'<br>';
            if($arr['pathid']){
               $str.= getSPath($arr['pathid']);           
            }else {
               $str.= '场景'.$arr['sceneid'];
            }
        return $str;
    }

    //根据$pathid获取功能信息
    function getSPath($pathid){
        $where=array("zt_module.id"=>$pathid);
        $data=M("branch")->where($where)->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')->select();   
        $str.= '<span class="label label-default">'
                    .getBranchName($data[0]['branch'])
                .'</span>&nbsp;';
        $str.= '<span class="label label-info">'
                    .getModuleName($data[0]['parent'])
                ."</span>" ;          
        $str.=  "<b>".$data[0]['name']."(".$data[0]['id'].")</b>";
        return $str;      
    }
    
    //根据secneid获取场景信息
    function getScene($secneid){
       $data=M('tp_scene')->find($secneid);
       return $data['sn'].$data['swho']."-".$data['swhen']."-".$data['scene'];      
    }

    //根据secneid获取场景功能信息
    function getSceneFunc($secneid){      
        $where=array('sceneid'=>$secneid);
        $arr=M('tp_scenefunc')->where($where)->order('sn,id')->select();
        foreach ($arr as $ar){
            $str.='<li class="list-group-item">';
            $str.=     $ar['sn'].".".getSPath($ar['funcid'])."-".$ar['func'].":".$ar['remarks']."【".$ar['casestate']."】"
                        ." <br>&nbsp;&nbsp;<b>意图：</b>".$ar['casemain']."<br>&nbsp;&nbsp;<b>预期：</b>".$ar['caseexpected'];
            $str.= '</li>';
        }
        return $str;
    }
    
    //根据$funcid获取功能信息
    function getSPFunc($funcid){
        $where=array("zt_tp_func.id"=>$funcid);
        $data=M("branch")->where($where)
            ->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
            ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
            ->select();
       $str.='<span class="label label-default">'.getBranchName($data[0]['branch'])."</span>";
       $str.=getModuleName($data[0]['parent'])."-".$data[0]['name']."-".$data[0]['func'];
      return $str;        
    }
    
    //根据$pathid获取模块名
    function getModuleName($pathid){
       $data=M('module')->find($pathid);
            if ($data['parent']){
                $str=$data['parent'].$data['name'];
            }else {
                $str=$data['name'];                              
            }            
        return $str;      
    }
    
    //获取平台名称
    function getBranchName($branchid){
        $data=M('branch')->find($branchid);
        return $data['name'];
    }        

    //获取职位信息
    function getHrtitle($hrid){
        $data=M('tp_hr')->find($hrid);
        return $data['title']."(".$data['id'].")";        
    }
    
    
    //获取项目状态
    function getProst($value){
        if($value=='doing'){
            return '进行中';
        }elseif ($value=='done'){
            return '已完成';
        }elseif ($value=='wait'){
            return '未开始';
        }else{
            return ;
        }        
    }
    
    //获取真实姓名
    function getRealname($username){       
        $where=array('account'=>$username);
        $data=M('user')->where($where)->find();
        return $data['realname'];  
    }
    
    //写用例模块数
    function countCExescene($Tester){
        $where=array('zt_tp_stagetester.tester'=>$Tester,'zt_tp_stagetester.type'=>'C','zt_project.status'=>'doing','zt_tp_stage.state'=>'进行中','zt_tp_exescene.results'=>'未测试');
        $count=M("project")->where($where)->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
            ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
            ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
            ->count();
        return $count;
    }
    
    //根据$proid获取用例数
    function countCase($proid){
        $where=array("fproid"=>$proid);
        $count=M("tp_case")->where($where)->count();
        return $count;
    }

    //根据$funcid获取用例数
    function countFCase($funcid){
        $where=array("funcid"=>$funcid);
        $count=M("tp_case")->where($where)->count();
        return $count;
    }

    //根据$funcid获取用例数
    function countFPCase($funcid){
        $where=array("funcid"=>$funcid,"fproid"=>$_SESSION['proid'],"state"=>"正常");
        $count=M("tp_case")->where($where)->count();
        return $count;
    }
    
    //根据funcid获取规则数
    function countFRules($funcid){
        $where=array("funcid"=>$funcid);
        $count=M("tp_rules")->where($where)->count();
        return $count;
    }

    //根据funcid获取功能失败数
    function countFResult($funcid){
            $where=array("proid"=>$_SESSION['proid'],"zt_tp_exefunc.funcid"=>$funcid,"zt_tp_exefunc.result"=>'失败');
            $data=M('tp_stage') ->where($where)
                ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
                ->join('zt_tp_exescene ON zt_tp_stagetester.id=zt_tp_exescene.stagetesterid')
                ->join('zt_tp_exefunc ON zt_tp_exescene.id=zt_tp_exefunc.exesceneid')
                ->count();
            return $data;        
    }

    //根据funcid获取功能被测试数
    function countFQResult($funcid){
        $where=array("proid"=>$_SESSION['proid'],"zt_tp_exefunc.funcid"=>$funcid);
        $data=M('tp_stage') ->where($where)
                ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
                ->join('zt_tp_exescene ON zt_tp_stagetester.id=zt_tp_exescene.stagetesterid')
                ->join('zt_tp_exefunc ON zt_tp_exescene.id=zt_tp_exefunc.exesceneid')
                ->count();
        return $data;      
    }

    //根据$exesceneid获取执行功能数
    function countExeFunc($exesceneid){
        $where=array("exesceneid"=>$exesceneid);
        $count=M("tp_exefunc")->where($where)->count();
        return $count;
    }

    //根据stagetesterid执行场景数
    function countExescene($stagetesterid){
        $where=array("stagetesterid"=>$stagetesterid);
        $count=M("tp_exescene")->where($where)->count();
        return $count;
    }
    
    //根据$pathid获取功能数
    function countFunc($pathid){
        $where=array("pathid"=>$pathid);
        $count=M("tp_func")->where($where)->count();
        return $count;
    }

    //根据$pathid获取功能数
    function countPFunc($pathid){
        $where=array("pathid"=>$pathid,"fproid"=>$_SESSION['proid']);
        $count=M("tp_func")->where($where)->count();
        return $count;
    }
    
    
  //根据$proid获取测试范围数量
  function countRange($proid){
      $where=array('zt_tp_func.fproid'=>$proid,'zt_tp_func.state'=>'正常','zt_module.state'=>'正常');
      $count=M('branch')->where($where)->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
      ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')->count();     
      return $count;          
  }
  
  //根据$proid获取功能数
  function countProFunc($proid){
      $map=array('zt_tp_prosys.project'=>$proid,'zt_module.state'=>'正常','zt_tp_func.state'=>'正常');
      $count= M("tp_prosys")->where($map)
              ->join('zt_branch ON zt_tp_prosys.branch =zt_branch.id')
              ->join('zt_module ON zt_branch.id = zt_module.branch')
              ->join('zt_tp_func ON zt_module.id = zt_tp_func.pathid')
              ->count();
      return $count;          
  }
  
  //根据proid获取场景数
  function countScene($proid){
      $where=array("proid"=>$proid);
      $count=M("tp_scene")->where($where)->count();
      return $count;
  }
  
  //根据$sceneid获取场景功能数
  function countSFunc($sceneid){
      $where=array("sceneid"=>$sceneid);
      $count=M("tp_scenefunc")->where($where)->count();
      return $count;
  } 

  //根据$proid获取里程碑数
  function countStage($proid){
      $where=array("proid"=>$proid);
      $count=M("tp_stage")->where($where)->count();
      return $count;
  }
  
 
   