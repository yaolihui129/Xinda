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

function getC__c_a4($key){
    $m=M('dictmap');
    $where=array('FieldValue'=>$key,'FieldName'=>'c__c_a4');
    $date=$m->where($where)->find();
    return $date['displaytext'];
}

function getC__c_q31($key){
    $m=M('dictmap');
    $where=array('FieldValue'=>$key,'FieldName'=>'c__c_q31');
    $date=$m->where($where)->find();
    return $date['displaytext'];
}

function getCustomerTypeCode($key){
    $m=M('dictmap');
    $where=array('FieldValue'=>$key,'FieldName'=>'CustomerTypeCode');
    $date=$m->where($where)->find();
    return $date['displaytext'];
}

function getSystemObjectTypeCode($key){
    $m=M('dictmap');
    $where=array('FieldValue'=>$key,'FieldName'=>'systemObjectTypeCode');
    $date=$m->where($where)->find();
    return $date['displaytext'];
}
