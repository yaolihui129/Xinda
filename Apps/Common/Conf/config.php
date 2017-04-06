<?php
return array(
	//'配置项'=>'配置值'
	'SHOW_PAGE_TRACE'=>false,//显示页面Trace信息
    'URL_MODEL' => '1',//URL模式
    'MODULE_ALLOW_LIST' => array('Admin','Anshun','Xiuli','TAdmin','Test','Mtsh','Tuocai','Yuefan','Xinda','Runzhu','Demo','Tpyjd'),//设置允许模块
    'DEFAULT_MODULE' => 'Xinda',//设置默认模块设置
    'MODULE_DENY_LIST' => array('Common','Runtime'), // 禁止访问的模块列表
    'APP_SUB_DOMAIN_DEPLOY'   =>    1, // 开启子域名配置
    'APP_SUB_DOMAIN_RULES'    =>    array(
        'admin'        => 'Admin',  // admin子域名指向Admin模块
        'test'         => 'Test',  // test子域名指向Test模块
    ),
    //修改定界符
    'TMPL_L_DELIM'=>'<{',
    'TMPL_R_DELIM'=>'}>',
    'SESSION_AUTO_START' => true,//开启SESSION
    'DB_TYPE'=>'mysql',
//     'DB_HOST'=>'192.168.21.10',
    'DB_HOST'=>'127.0.0.1',
    'DB_NAME'=>'xiuli',
    'DB_USER'=>'root',
    'DB_PWD'=>'root',
    'DB_PORT'=>'3306',
    
    'DB_PREFIX'=>'zt_',
    'DB_CHARSET'=> 'utf8', // 字符集

    //错误设置
    'ERROR_MESSAGE'         =>  '页面错误！请稍后再试～',//错误显示信息,非调试模式有效
    'ERROR_PAGE'            =>  '', // 错误定向页面
    'SHOW_ERROR_MSG'        =>  false,    // 显示错误信息
    'TRACE_MAX_RECORD'      =>  100,    // 每个级别的错误信息 最大记录数
);