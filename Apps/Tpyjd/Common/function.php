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

 
