<?php
return array(
	//'配置项'=>'配置值'
    'TMPL_PARSE_STRING'=>array(
        '__CSS__'=>__ROOT__.'/Public/css/',
        '__JS__'=>__ROOT__.'/Public/js/',
        '__IMAGES__'=>__ROOT__.'/Public/images/',       
        '__UPLOAD__'=>__ROOT__.'/Upload/'
    ),    
    'DEFAULT_THEME' =>  'default',//开启模板
    'PRODID'        =>   11,    //定义产品编号
    'PRODUCT'       =>  'TAdmin',//定义产品编号
    'WEIXIN_APPID'  =>  '',//定义微信APPID
    //连接数据库
    'DB_HOST'       =>  '192.168.155.54',   
    'DB_NAME'       =>  'zentao',
    'DB_USER'       =>  'root',
    'DB_PWD'        =>  'chexian',
    'DB_PORT'       =>  '3306',

);