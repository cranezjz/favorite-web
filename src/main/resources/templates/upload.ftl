<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css" />
<link href="fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<link href="fileinput/themes/explorer/theme.css" media="all" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/favorite.css" />
<title>收藏夹</title>
<script type="text/javascript">var remoteUrl ='${backServerUrl}';</script>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="fileinput/js/plugins/sortable.js" type="text/javascript"></script>
<script src="fileinput/js/fileinput.js" type="text/javascript"></script>
<script src="fileinput/js/locales/fr.js" type="text/javascript"></script>
<script src="fileinput/js/locales/zh.js" type="text/javascript"></script>
<script src="fileinput/themes/explorer/theme.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body style="padding-top:20px;">
	<div class="container">
		 <form id="form1" enctype="multipart/form-data" action="${backServerUrl}/favorite/upload" method="post">
			<input id="f_upload" name="f_upload" type="file" class="file" /> <br>
			<button type="submit" class="btn btn-primary">提交</button>
			<button type="reset" class="btn btn-default">重置</button>
		</form>
	</div>
</body>
<script>
</script>
</html>