<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
<div class="col-md-2">
    <ul class="nav nav-pills nav-stacked" id="nav">
        <li><a href="/admin/showCourse">课程管理<span class="badge pull-right">8</span></a></li>
        <li><a href="/admin/showStudent">学生管理<span class="badge pull-right">59</span></a></li>
        <li><a href="/admin/showTeacher">教师管理<span class="badge pull-right">10</span></a></li>
        <li><a href="/admin/userPasswordRest">账号密码重置<sapn class="glyphicon glyphicon-repeat pull-right" /></a></li>
        <li><a href="/admin/passwordRest">修改密码<sapn class="glyphicon glyphicon-pencil pull-right" /></a></li>
        <li><a href="/logout">退出系统<sapn class="glyphicon glyphicon-log-out pull-right" /></a></li>
        <li class="disabled"><a href="##">Responsive</a></li>
    </ul>
</div>--%>

<nav class="menu" data-ride="menu" style="width: 200px; margin-left: 20px; height: 100px;">
    <ul id="treeMenu" class="tree tree-menu" data-ride="tree">
        <li><a href="/admin/showCourse"><i class="icon icon-th"></i>首页</a></li>
        <li><a href="#"><i class="icon icon-user"></i>个人资料</a></li>
        <li>
            <a href="#"><i class="icon icon-time"></i>更新时间</a>
            <ul>
                <li><a href="#">今天</a></li>
                <li><a href="#">明天</a></li>
                <li><a href="#">昨天</a></li>
                <li><a href="#">本周</a></li>
            </ul>
        </li>
        <li><a href="${pageContext.request.contextPath}/goto/addAuth"><i class="icon icon-trash "></i>添加权限</a></li>
        <li><a href="${pageContext.request.contextPath}/goto/queryAuth"><i class="icon icon-list-ul"></i>查看权限</a></li>
        <li>
            <a href="#"><i class="icon icon-tasks"></i>状态</a>
            <ul>
                <li>
                    <a href="#"><i class="icon icon-circle-blank"></i>已就绪</a>
                    <ul>
                        <li><a href="#">已取消</a></li>
                        <li><a href="#">已关闭</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="icon icon-play-sign"></i>进行中</a></li>
                <li><a href="#"><i class="icon icon-ok-sign"></i>已完成</a></li>
            </ul>
        </li>
    </ul>
</nav>
<script type="text/javascript">
    // 手动通过点击模拟高亮菜单项
    $('#treeMenu').on('click', 'a', function() {
        $('#treeMenu li.active').removeClass('active');
        $(this).closest('li').addClass('active');
    });
</script>