<?php
return array(
	
    //'配置项'=>'配置值'
    'TMPL_PARSE_STRING'=>array(
        '__IMAGES__'=>__ROOT__.'/Public/images/Test',
        '__IMG__'   =>__ROOT__.'/Public/images',
        '__UPLOAD__'=>__ROOT__.'/Upload'
    ),    
    'DEFAULT_THEME' =>  'default',//开启模板
    'PRODID'        =>   10,    //定义产品编号
    'PRODUCT'       =>  'Test',//定义产品编号
    'WEIXIN_APPID'  =>  '',//定义微信APPID
    //连接数据库
    'DB_HOST'       =>  '192.168.21.10',
    'DB_NAME'       =>  'zentao',
    'DB_USER'       =>  'root',
    'DB_PWD'        =>  'root',
    'DB_PORT'       =>  '3306',
);