<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/29
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--   <%
        request.setAttribute("APP_PATH",request.getContextPath());
    %> -->
    <title>无访问权限</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"  rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!--   < a href=" " class="">返回</ a> -->

    <div class="container" align="center">
        <h1 class="text-info" style="font-family:宋体;font-weight:bold;font-size:49px">抱歉</h1>
        <br>
        <div class="text-muted"><h2>您没有操作权限 !</h2></div>
        <br>
        <br>
        <p><a role="button" href="${APP_PATH}/list" class="btn btn-success" data-toggle="tooltip" data-placement="right" title="请点此返回!">请返回!!!!! </a></p >
    </div>

<script>
    $(function () { $("[data-toggle='tooltip']").tooltip(); });
</script>

</body>
</html>
