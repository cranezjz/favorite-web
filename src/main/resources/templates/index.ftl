<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/favorite.css?11" />
<title>收藏夹</title>
<script type="text/javascript">var remoteUrl ='${backServerUrl}';</script>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/favorite.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-2">
				<a href="/" class="logo">e支付收藏夹 </a>
			</div>
			<div class="col-xs-1">
				<a href="/" class="logo"></a>
			</div>
			<div class="col-xs-1">
				<a href="/" class="logo"></a>
			</div>
			<div class="col-xs-2">
				<a href="#" onclick="setButtonIndex(3)" class="logo" data-toggle="modal" data-target="#myModal">批量修改（提交）</a>
			</div>
			<div class="col-xs-2">
				<a href="#" onclick="setButtonIndex(2)" class="logo" data-toggle="modal" data-target="#myModal">批量修改（下载） </a>
			</div>
			<div class="col-xs-2">
				<a href="#" onclick="setButtonIndex(1)" class="logo" data-toggle="modal" data-target="#myModal">恢复出厂设置</a>
			</div>
			<div class="col-xs-2">
				<button class="login" type="button">登录</button>
				<span style="width: 1px; display: inline-block;"></span>
				<button class="regist" type="button">注册</button>
			</div>
		</div>
		<section class="features" style="margin-top: 50px;">
		</section>
		
		<section class="footer">
			<div class="content">
			©2017 payment.nongxinyin.com. All rights reserved.<br/>农信银资金清算中心，e支付项目组。
			</div>
		</section>
	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">认证</h4>
				</div>
				<div class="modal-body" style="height: 180px;padding-top:80px;text-align: center;color:#333">
					请输入密码: <input type="password" id="password">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="closeButton">关闭</button>
					<button type="button" class="btn btn-primary" onclick="submit();">提交</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>