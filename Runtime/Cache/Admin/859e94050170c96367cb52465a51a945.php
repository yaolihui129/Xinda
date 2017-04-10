<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html lang="en">
	<head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <title>后台管理系统</title> 
	  <meta name="keywords" content="#" />
	  <meta name="description" content="#" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/bootstrap.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/font-awesome.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/jquery-ui.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/fullcalendar.css" /> 
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/prettyPhoto.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/rateit.css" />  
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/bootstrap-datetimepicker.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/jquery-cleditor.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/uniform/default.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/bootstrap-switch.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/style.css" />
	  <link rel="stylesheet" type="text/css" href="/Xinda/Public/css/mac/widgets.css" />
	  <style type="text/css">body{background-color: #fff;}</style>  
	  <link rel="shortcut icon" href="img/favicon/favicon.png">
	</head>
	<body>
	
	<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">	  
	    <div class="conjtainer">	      
	      <div class="navbar-header">
			  <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
				<span>菜单</span>
			  </button>			  
			  <a href="index.html" class="navbar-brand hidden-lg">首页</a>
			</div>
	      <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         	
	        <ul class="nav navbar-nav">  	         
	          <li class="dropdown dropdown-big">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-success"><i class="icon-cloud-upload"></i></span> 上传到云服务器</a>	           
	            <ul class="dropdown-menu">
	              <li>	               
	                <p>图片上传进度</p>	                
	                <div class="progress progress-striped active">
						<div class="progress-bar progress-bar-info"  role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
							<span class="sr-only">完成40%</span>
						</div>
				    </div><hr />		               
	                <p>视频上传进度</p>	                
	                <div class="progress progress-striped active">
						<div class="progress-bar progress-bar-success"  role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
							<span class="sr-only">完成80%</span>
						</div>
				    </div><hr />             
	                <div class="drop-foot">
	                  <a href="#">查看所有</a>
	                </div>	
	              </li>
	            </ul>
	          </li>
	          <li class="dropdown dropdown-big">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger"><i class="icon-refresh"></i></span> 同步到服务器</a>
	            <ul class="dropdown-menu">
	              <li>	               
	                <p><span class="label label-info"><i class="icon-cloud"></i></span>同步会员到服务器</p><hr />
	                <p><span class="label label-warning"><i class="icon-cloud"></i></span>同步书签到云端</p><hr />
	                <div class="drop-foot"><a href="#">查看所有</a></div>	
	              </li>
	            </ul>
	          </li>	
	        </ul>
	        <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
			</form>
	        <!-- Links -->
	        <ul class="nav navbar-nav pull-right">
	          <li class="dropdown pull-right">            
	            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
	              <i class="icon-user"></i> 管理员 <b class="caret"></b>              
	            </a>
	            <ul class="dropdown-menu">
	              <li><a href="#"><i class="icon-user"></i> 资料</a></li>
	              <li><a href="#"><i class="icon-cogs"></i> 设置</a></li>
	              <li><a href="/Xinda/index.php/Admin/Login/logout"><i class="icon-off"></i> 退出</a></li>
	            </ul>
	          </li>	          
	        </ul>
	      </nav>
	
	    </div>
	  </div>
	  <header>
	    <div class="container">
	      <div class="row">
	        <div class="col-md-4">
	          <!-- Logo. -->
	          <div class="logo">
	            <h1><a href="#">智慧信达<span class="bold"></span></a></h1>
	            <p class="meta">后台管理系统</p>
	          </div>	          
	        </div>
	
	        <!-- Button section -->
	        <div class="col-md-4">
	
	          <!-- Buttons -->
	          <ul class="nav nav-pills">
	
	            <!-- Comment button with number of latest comments count -->
	            <li class="dropdown dropdown-big">
	              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
	                <i class="icon-comments"></i> 聊天 <span   class="label label-info">6</span> 
	              </a>
	
	                <ul class="dropdown-menu">
	                  <li>
	                    <!-- Heading - h5 -->
	                    <h5><i class="icon-comments"></i> 聊天</h5>
	                    <!-- Use hr tag to add border -->
	                    <hr />
	                  </li>
	                  <li>
	                    <!-- List item heading h6 -->
	                    <h6><a href="#">你好 :)</a> <span class="label label-warning pull-right">10:42</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">你怎么样?</a> <span class="label label-warning pull-right">20:42</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">你在干撒呢?</a> <span class="label label-warning pull-right">14:42</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>                  
	                  <li>
	                    <div class="drop-foot">
	                      <a href="#">查看所有</a>
	                    </div>
	                  </li>                                    
	                </ul>
	            </li>
	
	            <!-- Message button with number of latest messages count-->
	            <li class="dropdown dropdown-big">
	              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
	                <i class="icon-envelope-alt"></i> 收件箱 <span class="label label-primary">6</span> 
	              </a>
	
	                <ul class="dropdown-menu">
	                  <li>
	                    <!-- Heading - h5 -->
	                    <h5><i class="icon-envelope-alt"></i> 消息</h5>
	                    <!-- Use hr tag to add border -->
	                    <hr />
	                  </li>
	                  <li>
	                    <!-- List item heading h6 -->
	                    <h6><a href="#">你好啊?</a></h6>
	                    <!-- List item para -->
	                    <p>最近咋样啊...</p>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">今天很好啊?</a></h6>
	                    <p>相当好...</p>
	                    <hr />
	                  </li>
	                  <li>
	                    <div class="drop-foot">
	                      <a href="#">查看所有</a>
	                    </div>
	                  </li>                                    
	                </ul>
	            </li>		           
	            <li class="dropdown dropdown-big">
	              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
	                <i class="icon-user"></i> 用户 <span   class="label label-success">6</span> 
	              </a>
	
	                <ul class="dropdown-menu">
	                  <li>
	                    <h5><i class="icon-user"></i> 用户</h5>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">Ravi Kumar</a> <span class="label label-warning pull-right">免费</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">Balaji</a> <span class="label label-important pull-right">高级</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">Kumarasamy</a> <span class="label label-warning pull-right">免费</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>                  
	                  <li>
	                    <div class="drop-foot">
	                      <a href="#">查看所有</a>
	                    </div>
	                  </li>                                    
	                </ul>
	            </li> 
	
	          </ul>
	
	        </div>
	
	        <!-- Data section -->
	
	        <div class="col-md-4">
	          <div class="header-data">
	
	            <!-- Traffic data -->
	            <div class="hdata">
	              <div class="mcol-left">
	                <!-- Icon with red background -->
	                <i class="icon-signal bred"></i> 
	              </div>
	              <div class="mcol-right">
	                <!-- Number of visitors -->
	                <p><a href="#">7000</a> <em>访问</em></p>
	              </div>
	              <div class="clearfix"></div>
	            </div>
	
	            <!-- Members data -->
	            <div class="hdata">
	              <div class="mcol-left">
	                <!-- Icon with blue background -->
	                <i class="icon-user bblue"></i> 
	              </div>
	              <div class="mcol-right">
	                <!-- Number of visitors -->
	                <p><a href="#">3000</a> <em>用户</em></p>
	              </div>
	              <div class="clearfix"></div>
	            </div>
	
	            <!-- revenue data -->
	            <div class="hdata">
	              <div class="mcol-left">
	                <!-- Icon with green background -->
	                <i class="icon-money bgreen"></i> 
	              </div>
	              <div class="mcol-right">
	                <!-- Number of visitors -->
	                <p><a href="#">5000</a><em>订单</em></p>
	              </div>
	              <div class="clearfix"></div>
	            </div>                        
	
	          </div>
	        </div>
	
	      </div>
	    </div>
	  </header>
	
	<!-- Header ends -->
	
	<!-- Main content starts -->
	
	<div class="content">
	
	  	<!-- Sidebar -->
	    <div class="sidebar">
	        <div class="sidebar-dropdown"><a href="#">导航</a></div>
	
	        <!--- Sidebar navigation -->
	        <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
	        <ul id="nav">
	          <!-- Main menu with font awesome icon -->
	          <li><a href="index.html" class="open"><i class="icon-home"></i> 首页</a>
	            <!-- Sub menu markup 
	            <ul>
	              <li><a href="#">Submenu #1</a></li>
	              <li><a href="#">Submenu #2</a></li>
	              <li><a href="#">Submenu #3</a></li>
	            </ul>-->
	          </li>
	          <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> 后台入口 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
	            <ul>
	              <li ><a target="_blank" href="http://www.xiuliguanggao.com/zentao/www">需求管理</a></li>
					  <?php if(is_array($mume)): $i = 0; $__LIST__ = $mume;if( count($__LIST__)==0 ) : echo "无后台权限" ;else: foreach($__LIST__ as $key=>$st): $mod = ($i % 2 );++$i;?><li ><a target="_blank" href="/Xinda/index.php/Admin/Setting/index/id/<?php echo ($st["prodid"]); ?>"><?php echo (getProd($st["prodid"])); ?></a></li><?php endforeach; endif; else: echo "无后台权限" ;endif; ?>	  
	            </ul>
	          </li> 
	          <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> 插件页面  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
	            <ul>
	              <li><a href="widgets1.html">插件页面 #1</a></li>
	              <li><a href="widgets2.html">插件页面 #2</a></li>
	              <li><a href="widgets3.html">插件页面 #3</a></li>
	            </ul>
	          </li>  
	          <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> 页面模块1 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
	            <ul>
	              <li><a href="post.html">表单Post</a></li>
	              <li><a href="login.html">登录页</a></li>
	              <li><a href="register.html">注册页面</a></li>
	              <li><a href="support.html">帮助页</a></li>
	              <li><a href="invoice.html">购物清单</a></li>
	              <li><a href="profile.html">个人资料</a></li>
	              <li><a href="gallery.html">相册页面</a></li>
	            </ul>
	          </li> 
	          <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> 页面模块2  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
	            <ul>
	              <li><a href="media.html">媒体</a></li>
	              <li><a href="statement.html">描述</a></li>
	              <li><a href="error.html">错误</a></li>
	              <li><a href="error-log.html">错误日志</a></li>
	              <li><a href="calendar.html">日历</a></li>
	              <li><a href="grid.html">网格</a></li>
	            </ul>
	          </li>                             
	          <li><a href="charts.html"><i class="icon-bar-chart"></i>图表</a></li> 
	          <li><a href="tables.html"><i class="icon-table"></i>表格</a></li>
	          <li><a href="forms.html"><i class="icon-tasks"></i>表单</a></li>
	          <li><a href="ui.html"><i class="icon-magic"></i>UI图标</a></li>
	          <li><a href="calendar.html"><i class="icon-calendar"></i>日历</a></li>
	        </ul>
	    </div>
	
	    <!-- Sidebar ends -->
	<div class="mainbar">
      
	    <!-- Page heading -->
	    <div class="page-head">
	      <h2 class="pull-left"><i class="icon-home"></i> 首页</h2>

        <!-- Breadcrumb -->
        <div class="bread-crumb pull-right">
          <a href="index.html"><i class="icon-home"></i> 首页</a> 
          <!-- Divider -->
          <span class="divider">/</span> 
          <a href="#" class="bread-current">控制台</a>
        </div>

        <div class="clearfix"></div>

	    </div>
	    <!-- Page heading ends -->

	
	
     



<!-- Footer starts -->
	<footer>
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">	            
	            <p class="copy">Copyright &copy; 2012 | <a href="#">智慧信达</a> </p>
	      </div>
	    </div>
	  </div>
	</footer> 	
	
	<!-- Footer ends -->
	
	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 
	
	<!-- JS -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery.js"></script><!-- jQuery -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/bootstrap.js"></script><!-- Bootstrap -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-ui-custom.js"></script></script> <!-- jQuery UI -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/fullcalendar-min.js"></script></script> <!-- Full Google Calendar - Calendar -->
 	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-rateit-min.js"></script><!-- RateIt - Star rating -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-prettyPhoto.js"></script><!-- prettyPhoto -->
	
	<!-- jQuery Flot -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/excanvas-min.js"></script>
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-flot.js"></script>
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-flot-resize.js"></script>
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-flot-pie.js"></script>
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-flot-stack.js"></script>
	
	<!-- jQuery Notification - Noty -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-noty.js"></script><!-- jQuery Notify -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/themes/default.js"></script><!-- jQuery Notify -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/layouts/bottom.js"></script><!-- jQuery Notify -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/layouts/topRight.js"></script> <!-- jQuery Notify -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/layouts/top.js"></script><!-- jQuery Notify -->
	<!-- jQuery Notification ends -->	
	<script type="text/javascript" src="/Xinda/Public/js/mac/sparklines.js"></script> <!-- Sparklines -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-cleditor-min.js"></script> <!-- CLEditor -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/bootstrap-datetimepicker-min.js"></script><!-- Date picker -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/jquery-uniform-min.js"></script><!-- jQuery Uniform -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/bootstrap-switch-min.js"></script> <!-- Bootstrap Toggle -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/filter.js"></script><!-- Filter for support page -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/custom.js"></script><!-- Custom codes -->
	<script type="text/javascript" src="/Xinda/Public/js/mac/charts.js"></script><!-- Charts & Graphs -->
	
	<!-- Script for this page -->
	<script type="text/javascript">
	$(function () {
	
	    /* Bar Chart starts */
	
	    var d1 = [];
	    for (var i = 0; i <= 20; i += 1)
	        d1.push([i, parseInt(Math.random() * 30)]);
	
	    var d2 = [];
	    for (var i = 0; i <= 20; i += 1)
	        d2.push([i, parseInt(Math.random() * 30)]);
	
	
	    var stack = 0, bars = true, lines = false, steps = false;
	    
	    function plotWithOptions() {
	        $.plot($("#bar-chart"), [ d1, d2 ], {
	            series: {
	                stack: stack,
	                lines: { show: lines, fill: true, steps: steps },
	                bars: { show: bars, barWidth: 0.8 }
	            },
	            grid: {
	                borderWidth: 0, hoverable: true, color: "#777"
	            },
	            colors: ["#ff6c24", "#ff2424"],
	            bars: {
	                  show: true,
	                  lineWidth: 0,
	                  fill: true,
	                  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
	            }
	        });
	    }
	
	    plotWithOptions();
	    
	    $(".stackControls input").click(function (e) {
	        e.preventDefault();
	        stack = $(this).val() == "With stacking" ? true : null;
	        plotWithOptions();
	    });
	    $(".graphControls input").click(function (e) {
	        e.preventDefault();
	        bars = $(this).val().indexOf("Bars") != -1;
	        lines = $(this).val().indexOf("Lines") != -1;
	        steps = $(this).val().indexOf("steps") != -1;
	        plotWithOptions();
	    });
	
	    /* Bar chart ends */
	
	});
	
	
	/* Curve chart starts */
	
	$(function () {
	    var sin = [], cos = [];
	    for (var i = 0; i < 14; i += 0.5) {
	        sin.push([i, Math.sin(i)]);
	        cos.push([i, Math.cos(i)]);
	    }
	
	    var plot = $.plot($("#curve-chart"),
	           [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
	               series: {
	                   lines: { show: true, fill: true},
	                   points: { show: true }
	               },
	               grid: { hoverable: true, clickable: true, borderWidth:0 },
	               yaxis: { min: -1.2, max: 1.2 },
	               colors: ["#1eafed", "#1eafed"]
	             });
	
	    function showTooltip(x, y, contents) {
	        $('<div id="tooltip">' + contents + '</div>').css( {
	            position: 'absolute',
	            display: 'none',
	            top: y + 5,
	            left: x + 5,
	            border: '1px solid #000',
	            padding: '2px 8px',
	            color: '#ccc',
	            'background-color': '#000',
	            opacity: 0.9
	        }).appendTo("body").fadeIn(200);
	    }
	
	    var previousPoint = null;
	    $("#curve-chart").bind("plothover", function (event, pos, item) {
	        $("#x").text(pos.x.toFixed(2));
	        $("#y").text(pos.y.toFixed(2));
	
	        if ($("#enableTooltip:checked").length > 0) {
	            if (item) {
	                if (previousPoint != item.dataIndex) {
	                    previousPoint = item.dataIndex;
	                    
	                    $("#tooltip").remove();
	                    var x = item.datapoint[0].toFixed(2),
	                        y = item.datapoint[1].toFixed(2);
	                    
	                    showTooltip(item.pageX, item.pageY, 
	                                item.series.label + " of " + x + " = " + y);
	                }
	            }
	            else {
	                $("#tooltip").remove();
	                previousPoint = null;            
	            }
	        }
	    }); 
	
	    $("#curve-chart").bind("plotclick", function (event, pos, item) {
	        if (item) {
	            $("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
	            plot.highlight(item.series, item.datapoint);
	        }
	    });
	
	});
	
	/* Curve chart ends */
	</script>
	
	</body>
</html>