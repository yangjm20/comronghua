<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/24
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%
        request.setAttribute("APP_PATH",request.getContextPath());
    %>
    <title>农业设备服务</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="${APP_PATH}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${APP_PATH}/assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="${APP_PATH}/assets/vendor/chartist/css/chartist-custom.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="${APP_PATH}/assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="${APP_PATH}/assets/css/demo.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="${APP_PATH}/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="${APP_PATH}/assets/img/favicon.png">

    <link href="${APP_PATH}/assets/vendors/fullcalendar/fullcalendar.css" rel="stylesheet" media="screen">
</head>
<div id="sidebar-nav" class="sidebar">
    <div class="sidebar-scroll">
        <nav>
            <ul class="nav">
                <li><a href="${APP_PATH}/list" class="active"><i class="lnr lnr-home"></i> <span>系统首页</span></a></li>

                <li>
                    <a href="#orderManger" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>服务管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                    <div id="orderManger" class="collapse ">
                        <ul class="nav">
                            <li><a href="#" class="">账号管理</a></li>
                            <li><a href="#" class="">服务监督</a></li>
                            <li><a href="#" class="">支付稽核</a></li>
                            <li><a href="#" class="">投诉处理</a></li>
                        </ul>
                    </div>
                </li>

                <li>
                    <a href="#accountManger" data-toggle="collapse" class="collapsed"><i class="glyphicon glyphicon-jpy"></i> <span>统计管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                    <div id="accountManger" class="collapse ">
                        <ul class="nav">
                            <li><a href="#" class="">服务统计</a></li>
                            <li><a href="#" class="">会员分析</a></li>
                            <li><a href="#" class="">评价分析</a></li>
                        </ul>
                    </div>
                </li>
<%--改动--%>
                <li>
                    <a href="#sysManger" data-toggle="collapse" class="collapsed"><i class="glyphicon glyphicon-cog"></i> <span>系统管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                    <div id="sysManger" class="collapse ">
                        <ul class="nav">
                            <li><a href="${APP_PATH}/admin/sysset" class="">系统设置</a></li>
                            <li><a href="${APP_PATH}/admin/sysrole" class="">角色管理</a></li>
                            <li><a href="${APP_PATH}/user/sysuser" class="">用户管理</a></li>
                            <li><a href="${APP_PATH}/admin/sysdata" class="">基础数据</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
</div>
