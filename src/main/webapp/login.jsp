<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="js/zui/dist/css/zui.css"/>
<script type="text/javascript" src="js/zui/dist/lib/jquery/jquery.js"></script>
<script type="text/javascript" src="js/zui/dist/js/zui.min.js"></script>
</head>
<body>
	<form class="form-horizontal" action="${pageContext.request.contextPath}/user/login.do" method="post" onsubmit="check();">
		<div class="form-group">
			<label for="username" class="col-sm-2 required">用户名：</label>
			<div class="col-md-6 col-sm-10">
				<input type="text" id="username" class="form-control" placeholder="用户名：" name="username"/>
			</div>
		</div>

		<div class="form-group">
			<label for="password" class="col-sm-2 required">密码：</label>
			<div class="col-md-6 col-sm-10">
				<input type="password" id="password" class="form-control" placeholder="密码：" name="password"/>
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-primary">提交</button>
			</div>
		</div>
	</form>
	<script type="text/javascript">
        function check() {
            var username = $("#username").val();
            if (username == undefined ||　username == "") {
                return false;
            }
        }
	</script>
</body>
</html>