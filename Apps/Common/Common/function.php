<?php
// 根据id获取状态
function getState($id){
    if ($id){
        $m=M('dict');
        $data=$m->find($id);
        return $data['v'];
    }else {
        return ;
    }
}


//根据车辆ID获取维修记录
function getServicelist($carid){
    $m=M('order_serviccar');
    $where[carid]=$carid;
    $data=$m->where($where)->order('ctime desc')->select();
    
     $str.='<br><br><ul class="list-group">';
        foreach ($data as $ar){
          $str.='<li class="list-group-item">';
          $str.=$ar['sdate'].':'.getProduct($ar['prodid']).$ar['typy'].$ar['textservice'].'&nbsp;里程数：'.$ar['odograph'];
          $str.= '</li>';
        }
        
        $str.='</ul>';
    
    
    if ($data){
        return $str;
    }else {
        return "暂时还没有维修保养记录";
    }

}
//根据车辆ID获取车牌号
function getCarinfo($carid){
    $m=D('car');
    $data=$m->find($carid);
    $str=$data['plateno']."&nbsp;".$data['type']."&nbsp;【".$data['color']."】";
    if($data){
        return $str;
    }else{
        return "没有车牌信息";
    }
    
}

//根据id获取客户电话
function getCusPhone($id){
    $m=D('tp_customer');
    $arr=$m->find($id);
    
    return $arr['phone'];
    
}


//根据id获取客户姓名

function getCusName($id){
    if($id){
        $m=D('tp_customer');
        $arr=$m->find($id);
        
        return $arr['realname'];
    }
}



//根据id获取活动信息
function getVoucher($id){
    if ($id){
        $m=D('voucher');
        $arr=$m->find($id);
        $str=$arr['title']
        ."：奖券【".$arr['total']
        ."】特等奖【".$arr['specia']
        ."】，一等奖【".$arr['first']
        ."】，二等奖【".$arr['second']
        ."】三等奖【".$arr['third']
        ."】，参与奖【".$arr['canyu']."】";
        return $str;
    }else {
        return ;
    }

}

// 根据id获取奖券数
function countTickets($id){
    if ($id){
        $m=D('tickets');
        $where=array("voucherid"=>$id);
        $c=$m->where($where)->count();
        return $c;
    }else {
        return ;
    }

}

/**
 * 获取客户端浏览器类型
 * @param  string $glue 浏览器类型和版本号之间的连接符
 * @return string|array 传递连接符则连接浏览器类型和版本号返回字符串否则直接返回数组 false为未知浏览器类型
 */
////获得访客浏览器类型
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

////获得访客浏览器语言
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

////获取访客操作系统
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
function getRandCode($s){
    $array = array(
        'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        '0','1','2','3','4','5','6','8','9'
    );
    $tmpstr ='';
    $max =count($array);
    for($i=1;$i<=$s;$i++){
        $key =rand(0,$max-1);
        $tmpstr.=$array[$key];
    }
    return $tmpstr;
}


// 执行CURL操作
function httpGet($url){
    //1.获取初始化URL
    $ch=curl_init();
    //2.设置curl的参数
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_TIMEOUT, 500);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_URL, $url);
    //3.采集
    $res = curl_exec($ch);
    //4.关闭
    curl_close($ch);
    if(curl_errno($ch)){
        $res=curl_errno($ch);
    }
    return $res;
}

function httpPost($url,$data){
    //1.获取初始化URL
    $ch=curl_init();
    //2.设置curl的参数   
    curl_setopt($ch, CURLOPT_TIMEOUT, 500);
    //设置抓取的url
    curl_setopt($ch, CURLOPT_URL, $url);
    //设置头文件的信息作为数据流输出
    curl_setopt($curl, CURLOPT_HEADER, 1);
    //设置获取的信息以文件流的形式返回，而不是直接输出。
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    //设置post方式提交
    curl_setopt($ch, CURLOPT_POST, 1);
    //post变量
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    //3.采集
    $res = curl_exec($ch);
    //4.关闭
    curl_close($ch);
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
                <Image>
                <MediaId><![CDATA[%s]]></MediaId>
                </Image>
                </xml>";
    echo sprintf($template, $toUser, $fromUser, $time, $msgType,$mediaId);
}

//微信语音回复
function wxReplyVoice($toUser,$fromUser,$mediaId){
    $msgType   = 'voice';
    $time      = time();
    $template = "<xml>
                <ToUserName><![CDATA[%s]]></ToUserName>
                <FromUserName><![CDATA[%s]]></FromUserName>
                <CreateTime>%s</CreateTime>
                <MsgType><![CDATA[%s]]></MsgType>
                <Voice>
                <MediaId><![CDATA[%s]]></MediaId>
                </Voice>
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


function getTimeQrCode($token,$scene_id,$expire=30){
    
    $url='https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token='.$token;
    $expire = $expire*24*60*60;
    $postArr =array(
        'expire_seconds'=>$expire,
        'action_name'=>"QR_SCENE",
        'action_info'=>array(
            'scene'=>array('scene_id'=>$scene_id),
        ),
    );
    //封装json
    $postJson = json_encode($postArr);
    //获取 $ticket
    $res = httpPost($url, $postJson);
    $res = json_decode($res,true);
    $ticket =$res['ticket'];    
    //使用$ticket换去二维码图片
    $long_url='https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket='.$ticket;
    $url='https://api.weixin.qq.com/cgi-bin/shorturl?access_token='.$token;
    $array=array(
        'action'=>'long2short',
        'long_url'=>$long_url,
    );
    $postJson = json_encode($array);
    $res = httpPost($url, $postJson);
    $res = json_decode($res,true);
    $short_url = $res['short_url'];
    return $short_url;
}

function getForeverQrCode($token,$scene_id){
    
    $url='https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token='.$token;
    //POST数据例子：
    //{ "action_name": "QR_SCENE", "action_info": {"scene": {"scene_id": 123}}}
    $postArr =array(
        'action_name'=>"QR_LIMIT_SCENE",
        'action_info'=>array(
            'scene'=>array('scene_id'=>$scene_id),
        ),
    );
    $postJson = json_encode($postArr);
    
    $res = httpPost($url, $postJson);
    $res = json_decode($res,true);
    $ticket =$res['ticket'];
    //2.使用$ticket换去二维码图片
    $long_url='https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket='.$ticket;
    $url='https://api.weixin.qq.com/cgi-bin/shorturl?access_token='.$token;
    $array=array(
        'action'=>'long2short',
        'long_url'=>$long_url,
    );
    $postJson = json_encode($array);
    $res = httpPost($url, $postJson);
    $res = json_decode($res,true);
    $short_url = $res['short_url'];
    return $short_url;
}

//参数1：访问的URL，参数2：post数据(不填则为GET)，参数3：提交的$cookies,参数4：是否返回$cookies
function curl_request($url,$post='',$cookie='', $returnCookie=0){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)');
    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($curl, CURLOPT_AUTOREFERER, 1);
    curl_setopt($curl, CURLOPT_REFERER, "http://XXX");
    if($post) {
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($post));
    }
    if($cookie) {
        curl_setopt($curl, CURLOPT_COOKIE, $cookie);
    }
    curl_setopt($curl, CURLOPT_HEADER, $returnCookie);
    curl_setopt($curl, CURLOPT_TIMEOUT, 10);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $data = curl_exec($curl);
    if (curl_errno($curl)) {
        return curl_error($curl);
    }
    curl_close($curl);
    if($returnCookie){
        list($header, $body) = explode("\r\n\r\n", $data, 2);
        preg_match_all("/Set\-Cookie:([^;]*);/", $header, $matches);
        $info['cookie']  = substr($matches[1][0], 1);
        $info['content'] = $body;
        return $info;
    }else{
        return $data;
    }
}

//获取微信AccessToken
function getWxAccessToken($id){     
    $m=D('wx_wechat');
    $arr=$m->find($id);
    //如果access_token过期，重新获取
    if((time() - $arr['otime'])>0){
        $appid=$arr['appid'];
        $appsecret=$arr['appsecret'];
        $url='https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$appid.'&secret='.$appsecret;
        $arr = json_decode(httpGet($url), true);
        $data['id']=$id;
        $data['access_token']=$arr['access_token'];
        $data['expires_in']=$arr['expires_in'];
        $data['otime']=time()+7000;
        //更新AccessToken
        $m->save($data);
        return $data['access_token'];

    }else {
        //如果access_token没有过期，直接从数据库中取值
        return $arr['access_token'];
        dump($arr);
    }
}


//获取getJsApiTicket全局票据
function getJsApiTicket($id){
    //如果session中保存有效的jsapi_ticket
  
    if (($_SESSION['jsapi_ticket_expire_time']-time()>0)){
        $jsapi_ticket = $_SESSION['jsapi_ticket'];
        
    }else {
        $access_token = getWxAccessToken($id);
        $url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=".$access_token."&type=jsapi";
        $res =json_decode(httpGet($url),true);
        $jsapi_ticket=$res['ticket'];
        $_SESSION['jsapi_ticket']=$jsapi_ticket;
        $_SESSION['jsapi_ticket_expire_time']=time()+7000;
    }
    return $jsapi_ticket;
}


function getWxServerIp($id){
    $accessToken = getWxAccessToken($id);
    $url = "https://api.weixin.qq.com/cgi-bin/getcallbackip?access_token=".$accessToken;
    $res = httpGet($url);    
    $arr = json_decode($res,true);
    return $arr;
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
    
    

//根据id 获取老师信息
function getTeacher($id){
        if ($id){
            $m=M('customer');
            $where['isteacher']=1;
            $data=$m->where($where)->find($id);
            //dump($data);
            return $data['realname']."(".$data['phone'].")";
        }else {
            return ;
        }
        
}


/**
 * 根据funcid获取测试数据
 */
function getTest($funcid){
    $m=D('tp_exefunc');
    $where['funcid']=$funcid;
    $arr=$m->where($where)->order('updateTime desc')->limit(15)->select();
//     dump($arr);
    $str.='<ul class="list-group">';
    foreach ($arr as $ar){
      $str.='<li class="list-group-item"><span class=badge>'
            .$ar['result'].'</span>'
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

/**
 * 根据id获取功能名
 */
function getFunc($funcid){
    if ($funcid){
        $m=M('tp_func');
        $data=$m->find($funcid);
        return $data['func'];
    }else {
        return ;
    }
}

/**
 * 根据funcid获取功能结果
 */
function getFResult($funcid){
    if ($funcid){
        $m=M('tp_func');
        $data=$m->find($funcid);
        return $data['result'];
    }else {
        return ;
    }
}

//更具funcid获取项目用例
function getPFCase($funcid){
    $m=D('tp_case');
    $where['funcid']=$funcid;
    $where['state']='正常';
    $where['fproid']=$_SESSION['proid'];
    $arr=$m->where($where)->order('sn,id')->select();

    $str.='<ul class="list-group">';
    foreach ($arr as $ar){
         $str.='<li class="list-group-item">'
             .$ar['id'].".<b>意图：</b>".$ar['main'].";<b>预期：</b>".$ar['expected']
             .'<span class="badge">'.$ar['adder'].':'.$ar['updatetime'].'</span>'
             .'</li>';
     }
     $str.='</ul>';
            
            
    return $str;
    
}
    
   //根据proid获取风险数
    function countRisk($proid){
        $m=M("tp_risk");
        $where=array("proid"=>$proid);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 状态选择控件
     * @param $name 控件name
     * @param $value 选中值
     */
    function formselect($value="正常",$name="state",$type="state") {
        $html = '<select name="'.$name.'" class="form-control">';
        $m =M('dict');
        $where=array("type"=>$type,"state"=>"正常");
        //获取所有分类
        $cats = $m->where($where)->order('k')->select();
        foreach($cats as $v) {
            $selected = ($v['v']==$value) ? "selected" : "";
            $html .= '<option '.$selected.' value="'.$v['v'].'">'.$v['v'].'</option>';
        }
        $html .='<select>';
        return $html;
    }  
    
   
    
// 根据id获取项目信息
    function getPro($projectid){
        if ($projectid){
            $m=M('project');
            $data=$m->find($projectid);
            $str=$data['name']."(".$data['end']."上线)";    
            return $str;
        }else {
            return ;
        }
    } 
    
    //根据prodid 获取机构名称
    function getProduct($prodid){
        $m=M('product');
        $data=$m->find($prodid);
        $str=$data['name'];
        return $str;
    }
    
    // 根据id获取项目信息
    function getProname($projectid){
        if ($projectid){
            $m=M('project');
            $data=$m->find($projectid);
            $str=$data['name'];
            return $str;
        }else {
            return ;
        }
    }   
    
    //根据id获取项目编号
    function getProNo($projectid){
        if ($projectid){
            $m=M('project');
            $data=$m->find($projectid);   
            return $data['code'];
        }else {
            return ;
        }
    }
    
    //根据branchid获取路径数   
    function countPath($branchid){
        $m=M("module");
        $where=array("branch"=>$branchid);
        $count=$m->where($where)->count();
        return $count;
    }
        
    // 根据分组获取项目数     
    function countPro($testgp){
        $m=M("project");
        $where=array("testgp"=>$testgp);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据project获取系统数
     */
    function countProsys($project){
        $m=M("tp_prosys");
        $where=array("project"=>$project);
        $count=$m->where($where)->count();
        return $count;
    }

    /**
     * 根据阶段id获取测试人员
     */
    function countATester($id){
        $m=M("tp_stagetester");
        $where=array("stageid"=>$id,"type"=>"A");
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 自动化执行场景数
     */
    function countAExescene($Tester){
        $where['zt_tp_stagetester.tester']=$Tester;
        $where['zt_tp_stagetester.type']='A';
        $where['zt_project.status']='doing';
        $where['tp_stage.state']='进行中';
        $m=M("project");
        $count=$m->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
        ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
        ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
        ->where($where)->count();
        return $count;
    }
    
    /**
     * 手工执行场景数
     */
    function countMExescene($Tester){
        $where['zt_tp_stagetester.tester']=$Tester;
        $where['zt_tp_stagetester.type']='M';
        $where['zt_project.status']='doing';
        $where['zt_tp_stage.state']='进行中';
        $where['zt_tp_exescene.results']='未测试';
        $m=M("project");
        $count=$m->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
        ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
        ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
        ->where($where)->count();
        return $count;
    }
    
    function countCTester($id){
        $m=M("tp_stagetester");
        $where=array("stageid"=>$id,"type"=>"C");
        $count=$m->where($where)->count();
        return $count;
    }
    
    
    function countMTester($id){
        $m=M("tp_stagetester");
        $where=array("stageid"=>$id,"type"=>"M");
        $count=$m->where($where)->count();
        return $count;
    }

    //获取里程碑信息
    function getStage($stageid){
        if ($stageid){
            $m=M('tp_stage');
            $data=$m->find($stageid);
            $str=$data['sn'].'.'.$data['stage']."【".$data['state']."】";
            return $str;
        }else {
            return ;
        }
    }        
    //获取执行人信息
    function getStagetester($stagetesterid){
        $m=M("tp_stagetester");
        $arr=$m->find($stagetesterid);
        $str.=getStage($arr['stageid'])
            .'<span class="label label-info">'.$arr['tester'].'</span>';
        return $str;
    }
    
    
    //获取执行场景信息
    function getExescene($exesceneid){
        $m=M("tp_exescene");        
        $arr=$m->find($exesceneid);
        $str.=getStagetester($arr['stagetesterid']).'<br>';
        if($arr['pathid']){
           $str.= getSPath($arr['pathid']);           
        }else {
           $str.= '场景'.$arr['sceneid'];
        }
        return $str;
    }
    /**
     * 根据路径id获取功能信息
     */
    function getSPath($moduleid){
        if ($moduleid){
            $s = D("branch");
            $where=array("zt_module.id"=>$moduleid);
            $data=$s->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
            ->where($where)
            ->select();   
            $str.= '<span class="label label-default">'.getBranchName($data[0]['branch']).'</span>&nbsp;';
            $str.= '<span class="label label-info">'.getModuleName($data[0]['parent'])."</span>" ;          
            $str.=  "<b>".$data[0]['name']."(".$data[0]['id'].")</b>";
            return $str;
        }else {
            return ;
        }
    }
    
    /**
     * 根据secneid获取场景信息
     */
    function getScene($secneid){
        if ($secneid){
            $m=M('tp_scene');
            $data=$m->find($secneid);
            $str=$data['sn'].$data['swho']."-".$data['swhen']."-".$data['scene'];
            return $str;
        }else {
            return ;
        }
    }
    
    /**
     * 根据secneid获取场景功能信息
     */
    function getSceneFunc($secneid){
        $m=D('tp_scenefunc');
        $where['sceneid']=$secneid;
        $arr=$m->where($where)->order('sn,id')->select();
        foreach ($arr as $ar){
            $str.='<li class="list-group-item">'
                .$ar['sn'].".".getSPath($ar['funcid'])."-".$ar['func'].":".$ar['remarks']."【".$ar['casestate']."】"
                    ." <br>&nbsp;&nbsp;<b>意图：</b>".$ar['casemain']
                    ."<br>&nbsp;&nbsp;<b>预期：</b>".$ar['caseexpected'].'</li>';
        }
        return $str;
    }
    
    
    /**
     * 根据功能id获取功能信息
     */
    function getSPFunc($funcid){
        if ($funcid){
            $s = D("branch");
            $where=array("zt_tp_func.id"=>$funcid);
            $data=$s->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
            ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
            ->where($where)->select();
            $str='<span class="label label-default">'.getBranchName($data[0]['branch'])."</span>"
                    .getModuleName($data[0]['parent'])."-".$data[0]['name']."-".$data[0]['func'];
            return $str;
        }else {
            return ;
        }
    }
    
    //获取模块名
    function getModuleName($moduleid){
        if ($moduleid){
            $m=M('module');
            $data=$m->find($moduleid);
            if ($data['parent']){
                $str=$data['parent'].$data['name'];
            }else {
                $str=$data['name'];                              
            }
            
            return $str;
        }else {
            return ;
        }
    }
           
    //获取平台名称
    function getBranchName($branchid){
       
            $m=M('branch');
            $data=$m->find($branchid);
            $str=$data['name'];
            return $str;    
    }
    //获取职位信息
    function getHrtitle($hrid){
        $m=M('tp_hr');
        $data=$m->find($hrid);
        $str=$data['title']."(".$data['id'].")";
        return $str;
        
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
        if($username){
            $m=M('user');
            $where['account']=$username;
            $data=$m->where($where)->find();
            $str=$data['realname'];
            return $str;
        }else {
            return ;
        }
        
    }
    
    /**
     * 写用例模块数
     */
    function countCExescene($Tester){
        $where['zt_tp_stagetester.tester']=$Tester;
        $where['zt_tp_stagetester.type']='C';
        $where['zt_project.status']='doing';
        $where['zt_tp_stage.state']='进行中';
        $where['zt_tp_exescene.results']='未测试';
        $m=M("project");
        $count=$m->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
        ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
        ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
        ->where($where)->count();
        return $count;
    }
    
    /**
     * 根据项目获取用例数
     */
    function countCase($proid){
        $m=M("tp_case");
        $where=array("fproid"=>$proid);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据功能获取用例数
     */
    function countFCase($funcid){
        $m=M("tp_case");
        $where=array("funcid"=>$funcid);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据功能获取用例数
     */
    function countFPCase($funcid){
        $m=M("tp_case");
        $where=array("funcid"=>$funcid,"fproid"=>$_SESSION['proid'],"state"=>"正常");
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据funcid获取规则数
     */
    function countFRules($funcid){
        $m=M("tp_rules");
        $where=array("funcid"=>$funcid);
        $count=$m->where($where)->count();
        return $count;
    }

    /**
     * 根据funcid获取功能失败数
     */
    function countFResult($funcid){
        if ($funcid){
            $where=array("proid"=>$_SESSION['proid'],"zt_tp_exefunc.funcid"=>$funcid,"zt_tp_exefunc.result"=>'失败');
            $m=M('tp_stage');
            $data=$m ->where($where)
            ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
            ->join('zt_tp_exescene ON zt_tp_stagetester.id=zt_tp_exescene.stagetesterid')
            ->join('zt_tp_exefunc ON zt_tp_exescene.id=zt_tp_exefunc.exesceneid')
            ->count();
            return $data;
        }else {
            return ;
        }
    }
    
    /**
     * 根据funcid获取功能被测试数
     */
    function countFQResult($funcid){
        if ($funcid){
            $where=array("proid"=>$_SESSION['proid'],"zt_tp_exefunc.funcid"=>$funcid);
            $m=M('tp_stage');
            $data=$m ->where($where)
            ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
            ->join('zt_tp_exescene ON zt_tp_stagetester.id=zt_tp_exescene.stagetesterid')
            ->join('zt_tp_exefunc ON zt_tp_exescene.id=zt_tp_exefunc.exesceneid')
            ->count();
            return $data;
        }else {
            return ;
        }
    }
    
    
    /**
     * 根据列队获取执行功能数
     */
    function countExeFunc($exesceneid){
        $m=M("tp_exefunc");
        $where=array("exesceneid"=>$exesceneid);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据stagetesterid执行场景数
     */
    function countExescene($stagetesterid){
        $m=M("tp_exescene");
        $where=array("stagetesterid"=>$stagetesterid);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据路径获取功能数
     */
    function countFunc($pathid){
        $m=M("tp_func");
        $where=array("pathid"=>$pathid);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据路径获取功能数
     */
    function countPFunc($id){
        $m=M("tp_func");
        $where=array("pathid"=>$id,"fproid"=>$_SESSION['proid']);
        $count=$m->where($where)->count();
        return $count;
    }
    
    
  //获取项目测试范围功能点
  function countRange($proid){
      $s = D('branch');
      $where=array('zt_tp_func.fproid'=>$proid,'zt_tp_func.state'=>'正常','zt_module.state'=>'正常');
      $count=$s->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
      ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
      ->where($where)     
      ->count();
      return $count;          
  }
  //获取项目功能点数
  function countProFunc($proid){
      $s = D("tp_prosys");
      $map['zt_tp_prosys.project']=$proid;
      $map['zt_module.state']='正常';
      $map['zt_tp_func.state']='正常';
      $count=$s->where($map)
      ->join('zt_branch ON zt_tp_prosys.branch =zt_branch.id')
      ->join('zt_module ON zt_branch.id = zt_module.branch')
      ->join('zt_tp_func ON zt_module.id = zt_tp_func.pathid')
      ->count();
      return $count;          
  }
  
  
  /**
   * 根据proid获取场景数
   */
  function countScene($proid){
      $m=M("tp_scene");
      $where=array("proid"=>$proid);
      $count=$m->where($where)->count();
      return $count;
  }
  
  /**
   * 根据id获取场景功能数
   */
  function countSFunc($sceneid){
      $m=M("tp_scenefunc");
      $where=array("sceneid"=>$sceneid);
      $count=$m->where($where)->count();
      return $count;
  }
  

  /**
   * 根据项目获取里程碑数
   */
  function countStage($proid){
      $m=M("tp_stage");
      $where=array("proid"=>$proid);
      $count=$m->where($where)->count();
      return $count;
  }
  
 
   