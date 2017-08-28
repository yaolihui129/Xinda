<?php
// 检测PHP环境
if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');
header('Content-Type:text/html;Charset=UTF-8');

// 定义应用目录
define('APP_PATH','./Apps/');


// 定义运行时目录
define('RUNTIME_PATH','./Runtime/');

// 开启调试模式 建议开发阶段开启 部署阶段注释或者设为false,true
define('APP_DEBUG',true);

// 引入ThinkPHP入口文件
require './ThinkPHP/ThinkPHP.php';


