<?php
function getCityName($CityId){
    $arr=M('city')->find($CityId);
    
    return $arr['cityname'];
}

function getProvinceName($ProvinceId){
    $arr=M('province')->find($ProvinceId);
    return $arr['provincename'];
}

function getCountryName($CountryId){
    $m=D('country');
    $arr=$m->find($CountryId);

    return $arr['countryname'];
}

function getBind(){
    return $_SESSION['binding'];
}

function getBinding(){
    $serviceName="clogin";
    $username="test@yimin.la";
    $password="111111";
    $url=C('CRMURL');
    $url=$url."?serviceName=".$serviceName."&userName=".$username."&password=".$password;
    $res=httpGet($url);
    $res=json_decode($res,true);
    return $res['binding'];

}
