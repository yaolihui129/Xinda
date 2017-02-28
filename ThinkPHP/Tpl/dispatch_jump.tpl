<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>提示信息</title>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{background: #FFFFFF; }
canvas{background:#A2C101; solid #171717;display:block;left:50%;margin:-51px 0 0 -201px;position:absolute;top:50%;border:2px ;border-radius: 10px;}
#wenzi{position:absolute;
		margin-top: 200px;
		margin-left: 520px;
		font-size: 16px;}
</style>
</head>

<body>
	<div id="wenzi">
			<?php if(isset($message)) {?>
    		<h2><?php echo($message); ?></h2>
    		<?php }else{?>
			<p id="error"><?php echo($error); ?></p>
				<?php }?>
			<div class="main_bottom">
			<h1>页面自动 <a id="href" href="<?php echo($jumpUrl); ?>">跳转</a> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b></h1>
	<script type="text/javascript" src="__PUBLIC__/js/script50.js"></script>
	</div>

</body>
<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
  var time = --wait.innerHTML;
  if(time <= 0) {
    location.href = href;
    clearInterval(interval);
  };
}, 1000);
})();
</script>
</html>

