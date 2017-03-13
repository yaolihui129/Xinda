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
    //1.请求url地址
    $appid = 'wx3452e8086f5fefab';
    $appsecret =  'df38233db1ca1150fa34d42dabf8f5cc';
    $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appid."&secret=".$appsecret;
    $res = httpGet($url);
    
    return $res;
}