<?php
// 根据id获取分类名
function getCatname($cateid){
    if ($cateid){
        $m=M('xd_cate');
        $data=$m->find($cateid);
        $str=getCatname($data['pid'])."-".$data['catname'];
        return $str;
    }else {
        return "|-";
    }
}
//获取微信AccessToken
function getWxAccessToken(){   
    $id=1;
    $m=D('wx_wechat');
    $arr=$m->find($id);
    
    //如果access_token过期，重新获取
    if(time()>$arr['otiem']){
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