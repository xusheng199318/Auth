<%--
  Created by IntelliJ IDEA.
  User: Arthur
  Date: 2017/10/5
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>添加权限页面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/zui/dist/css/zui.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zui/dist/lib/jquery/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zui/dist/js/zui.min.js"></script>
</head>
<body>
    <form id="subForm" class="form-horizontal" action="${pageContext.request.contextPath}/auth/addAuth.do" method="post">
        <div class="form-group">
            <label for="code" name="username" class="col-sm-2 required">关键字：</label>
            <div class="col-md-6 col-sm-10">
                <input type="text" id="code" class="form-control" placeholder="关键字：" name="code"/>
            </div>
        </div>

        <div class="form-group">
            <label for="name" class="col-sm-2 required">名称：</label>
            <div class="col-md-6 col-sm-10">
                <input type="text" id="name" class="form-control" placeholder="名称：" name="name"/>
            </div>
        </div>

        <div class="form-group">
            <label for="page" class="col-sm-2 required">访问路径：</label>
            <div class="col-md-6 col-sm-10">
                <input type="text" id="page" class="form-control" placeholder="访问路径：" name="page" />
            </div>
        </div>

        <div class="form-group">
            <label for="generatemenu" class="col-sm-2 required">是否生成菜单：</label>
            <div class="col-md-6 col-sm-10">
                <input type="text" id="generatemenu" class="form-control" placeholder="是否生成菜单：" name="generatemenu"/>
            </div>
        </div>

        <div class="form-group">
            <label for="zindex" class="col-sm-2 required">优先级：</label>
            <div class="col-md-6 col-sm-10">
                <input type="text" id="zindex" class="form-control" placeholder="优先级：" name="zindex" />
            </div>
        </div>

        <div class="form-group">
            <label for="pid" class="col-sm-2 required">父功能点：</label>
            <div class="col-md-6 col-sm-10">
                <input type="text" id="pid" class="form-control" placeholder="父功能点：" name="pid" />
            </div>
        </div>

        <div class="form-group">
            <label for="description" class="col-sm-2 required">描述：</label>
            <div class="col-md-6 col-sm-10">
                <input type="text" id="description" class="form-control" placeholder="描述：" name="description"/>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" onclick="save();" class="btn btn-default">提交</button>
            </div>
        </div>
    </form>
<script type="text/javascript">
    function save() {
        var json = $("#subForm").serialize();
        console.log(json);
        $.ajax({
            url : "${pageContext.request.contextPath}/auth/addAuth.do",
            type : "post",
            data : json,
            success : function(result) {
                alert(result);
            }
        })
    }
</script>
</body>
</html>
