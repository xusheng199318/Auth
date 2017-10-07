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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zTreeStyle.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zui/dist/lib/jquery/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zui/dist/js/zui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zui/dist/lib/datatable/zui.datatable.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ztree/jquery.ztree.all.js"></script>
</head>
<body>

<table class="table datatable">
    <thead>
    <tr>
        <!-- 以下两列左侧固定 -->
        <th>编号</th>
        <th>名称</th>

        <!-- 以下三列中间可滚动 -->
        <th>描述</th>
        <th>是否生成菜单</th>
        <th>优先级</th>

        <!-- 以下列右侧固定 -->
        <th>路径</th>
    </tr>
    </thead>

    <tbody id="result">

    </tbody>
</table>

<div>
    <ul id="treeDemo" class="ztree"></ul>
</div>
<script type="text/javascript">
    getData();
    getTree();

    function getTree() {
        var setting = {
            check: {
                enable: true
            },
            data: {
                simpleData: {
                    enable: true
                }
            }
        };

        var zNodes =[
            { id:1, pId:0, name:"随意勾选 1", open:true},
            { id:11, pId:1, name:"随意勾选 1-1", open:true},
            { id:111, pId:11, name:"随意勾选 1-1-1"},
            { id:112, pId:11, name:"随意勾选 1-1-2"},
            { id:12, pId:1, name:"随意勾选 1-2", open:true},
            { id:121, pId:12, name:"随意勾选 1-2-1"},
            { id:122, pId:12, name:"随意勾选 1-2-2"},
            { id:2, pId:0, name:"随意勾选 2", checked:true, open:true},
            { id:21, pId:2, name:"随意勾选 2-1"},
            { id:22, pId:2, name:"随意勾选 2-2", open:true},
            { id:221, pId:22, name:"随意勾选 2-2-1", checked:true},
            { id:222, pId:22, name:"随意勾选 2-2-2"},
            { id:23, pId:2, name:"随意勾选 2-3"}
        ];

        $.fn.zTree.init($("#treeDemo"), setting, zNodes);
    }

    function getData() {
        $.ajax({
            url : "${pageContext.request.contextPath}/auth/queryAuth.do",
            type : "get",
            dataType : "json",
            success : function(result) {
                console.log(result);
                var s = "";
                $.each(result, function(index, value) {
                    s += "<tr>";
                    s += "<th>" + value.code + "</th>";
                    s += "<th>" + value.name + "</th>";
                    s += "<th>" + value.description + "</th>";
                    s += "<th>" + value.generatemenu + "</th>";
                    s += "<th>" + value.zindex + "</th>";
                    s += "<th>" + value.page + "</th>";
                    s += "</tr>";
                });
                $("#result").append(s);
            }
        });
    }


</script>
</body>
</html>
