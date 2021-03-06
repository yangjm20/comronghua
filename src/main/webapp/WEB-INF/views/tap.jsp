<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/24
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>

<head>
    <%
        request.setAttribute("APP_PATH",request.getContextPath());
    %>
    <title>农业设备服务</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="../../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="../../assets/vendor/chartist/css/chartist-custom.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="../../assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="../../assets/css/demo.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../../assets/img/favicon.png">

    <link href="../../assets/vendors/fullcalendar/fullcalendar.css" rel="stylesheet" media="screen">
</head>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="brand">
        <a href="../static/index.html"><img src="../../assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
    </div>
    <div class="container-fluid">
        <div class="navbar-btn">
            <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
        </div>
        <form class="navbar-form navbar-left">
            <div class="input-group">
                <input type="text" value="" class="form-control" placeholder="Search">
                <span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
            </div>
        </form>
        <!--<div class="navbar-btn navbar-btn-right">
            <a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
        </div>-->
        <div id="navbar-menu">
            <ul class="nav navbar-nav navbar-right">
                <%--<li class="dropdown">
                    <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                        <i class="lnr lnr-alarm"></i>
                        <span class="badge bg-danger">5</span>
                    </a>
                    <ul class="dropdown-menu notifications">
                        <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
                        <li><a href="#" class="more">See all notifications</a></li>
                    </ul>
                </li>--%>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../../assets/img/user.png" class="img-circle" alt="Avatar"> <span><security:authentication property="principal.username"></security:authentication></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                    <ul class="dropdown-menu">
                       <%-- <li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
                        <li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>--%>
                        <li><a href="${APP_PATH}/admin/sysset"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
                        <li><a href="${APP_PATH}/logout"><i class="lnr lnr-exit"></i> <span>退出</span></a></li>
                    </ul>
                </li>
                <!-- <li>
                    <a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
                </li> -->
            </ul>
        </div>
    </div>
</nav>
