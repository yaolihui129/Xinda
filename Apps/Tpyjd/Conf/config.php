<?php
return array(
	//'配置项'=>'配置值'
    'TMPL_PARSE_STRING'=>array(
        '__CSS__'=>__ROOT__.'/Public/css/',
        '__JS__'=>__ROOT__.'/Public/js/',
        '__IMAGES__'=>__ROOT__.'/Public/images/Tpyjd',
        '__IMG__'=>__ROOT__.'/Public/images',
        '__UPLOAD__'=>__ROOT__.'/Upload/Tpyjd'
    ),
    
//     'DB_HOST'=>'192.168.21.10',
    'DB_HOST'=>'127.0.0.1',
    'DB_NAME'=>'tpyjd_crm',
    'DB_PREFIX'=>'tpyjd_',
    'CRMURL'=>'http://app5.cloudcc.com/distributor.action',
    'PRODID'        =>   13,    //定义产品编号
    'PRODUCT'       =>  'Tpyjd',//定义产品编号
    'WEIXIN_APPID'  =>  '',//定义微信APPID
    
);