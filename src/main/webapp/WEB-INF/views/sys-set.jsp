<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/24
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统设置</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="${APP_PATH}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${APP_PATH}/assets/vendor/linearicons/style.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="${APP_PATH}/assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="${APP_PATH}/assets/css/demo.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="${APP_PATH}/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="${APP_PATH}/assets/img/favicon.png">
</head>
<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <jsp:include page="tap.jsp"></jsp:include>
    <!-- END NAVBAR -->
    <!-- LEFT SIDEBAR -->
    <jsp:include page="left.jsp"></jsp:include>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <p>系统设置</p>
                </div>
                <div class="row">
                    <ol class="breadcrumb">
                        <li><a href="#">系统首页</a></li>
                        <li><a href="#">系统管理</a></li>
                        <li class="active">系统设置</li>
                    </ol>
                </div>

                <div class="row">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab1" data-toggle="tab">短信通道</a></li>
                        <li><a href="#tab2" data-toggle="tab">支付通道</a></li>
                        <li><a href="#tab3" data-toggle="tab">等级设置</a></li>
                        <li><a href="#tab4" data-toggle="tab">积分设置</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab1">

                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">阿里云短信接口</label>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">AccessKeyId</label>
                                    <div class="col-sm-2">
                                        <input type="email" class="form-control " id="inputAccessKeyId" placeholder="LTAIlDNf2We7bQmV" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">AccessKeySecret</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputAccessKeySecret" placeholder="3voWAbHO3KcJy9JoZUopkREbPVkD9f" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">发送的手机号</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputPhone" placeholder="18018592558" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">短信签名</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputSignName" placeholder="阿里云短信测试专用" disabled>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">短信模板</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputTemplateCode" placeholder="SMS_123870076" disabled>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" >内容设置</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputTemplateParam" placeholder="模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时" disabled>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">确认</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="tab-pane" id="tab2">支付通道内容框</div>
                        <div class="tab-pane" id="tab3">等级设置内容框</div>
                        <div class="tab-pane" id="tab4">积分设置内容框</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->
    </div>
    <!-- END MAIN -->
    <div class="clearfix"></div>

</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="${APP_PATH}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${APP_PATH}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="${APP_PATH}/assets/scripts/klorofil-common.js"></script>
</body>
</html>
