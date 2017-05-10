<?php
return array(
//'配置项'=>'配置值'
    'TMPL_PARSE_STRING'=>array(
        '__IMAGES__'=>__ROOT__.'/Public/images/Tpyjd',
        '__UPLOAD__'=>__ROOT__.'/Upload'
    ),    
    'DEFAULT_THEME' =>  'mac',//开启模板
    'DB_HOST'       =>  '192.168.21.10',
    'DB_NAME'       =>  'tpyjd_crm',
    'DB_USER'       =>  'root',
    'DB_PWD'        =>  'root',
    'DB_PORT'       =>  '3306',
    'DB_PREFIX'     =>  'tpyjd_',

    'CRMURL'        =>'http://app5.cloudcc.com/distributor.action',
    'PRODID'        =>   13,    //定义产品编号
    'PRODUCT'       =>  'Tpyjd',//定义产品编号
    'WX_APPID'      =>  'wx0ed91c537a52303b',//定义微信APPID
    'WX_APPSECRET'  =>  'b8633e9ce9c957993f908cad1b91fd93',     //定义微信APPID
    
);