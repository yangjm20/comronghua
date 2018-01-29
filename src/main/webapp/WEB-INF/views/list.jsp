<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/23
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>
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
<body>
<!-- WRAPPER -->
<security:authentication property="principal.username"></security:authentication>
<div id="wrapper">

    <jsp:include page="tap.jsp"></jsp:include>

    <jsp:include page="left.jsp"></jsp:include>

    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">

                <div class="panel">
                    <div class="panel-heading">
                        <p class="panel-title" id="logInfo"></p>
                        <div class="right">欢迎<span><security:authentication property="principal.username"></security:authentication></span> 访问</div>

                    </div>

                </div>

                <!-- END OVERVIEW -->

                <div class="row">
                    <div class="col-md-offset-1 col-md-4">

                        <!-- PROFILE HEADER -->
                        <div class="profile-header">
                            <div class="overlay"></div>
                            <div class="profile-main">
                                <img src="${APP_PATH}/assets/img/user-medium.png" class="img-circle" alt="Avatar">
                                <%--<h3 class="name"> <span>${user.displayName}</span> </h3>--%>
                                <h3 class="name"> <span><security:authentication property="principal.username"></security:authentication></span> </h3>
                                <span class="online-status status-available">在线</span>
                            </div>
                            <div class="profile-stat">
                                <div class="row">
                                    <div class="col-md-4 stat-item">
                                        45 <span>已完成数</span>
                                    </div>
                                    <div class="col-md-4 stat-item">
                                        15 <span>总预约数</span>
                                    </div>
                                    <div class="col-md-4 stat-item">
                                        2174 <span>总访问数</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PROFILE HEADER -->
                        <!-- PROFILE DETAIL -->
                        <div class="profile-detail">
                            <div class="profile-info">
                                <h4 class="heading">用户基本信息:</h4>
                                <ul class="list-unstyled list-justify">
                                    <%--<li class="col-lg-offset-3">登录账号：<span>${user.username}</span></li>--%>
                                        <%--${session.SPRING_SECURITY_CONTEXT.authentication.principal.username}--%>
                                    <li class="col-lg-offset-3">登录账号：<span><security:authentication property="principal.username"></security:authentication></span></li>
                                    <%--<li class="col-lg-offset-3">所属部门：<span>${user.dept_id}</span></li>--%>
                                     <%--<security:authentication property="principal.sex">--%>
                                         <%--<security:authentication property="principal.email">--%>
                                             <%--<security:authentication property="principal.phone">--%>
                                    <li class="col-lg-offset-3">显示名称：<span>displayName</span></li>
                                    <li class="col-lg-offset-3">性别：<span>男</span></li>
                                    <%--<li class="col-lg-offset-3">出生日期：<span>${user.date}</span></li>--%>
                                    <li class="col-lg-offset-3">电子邮箱：<span>webmaster@sipi.com.cn</span></li>
                                    <li class="col-lg-offset-3">联系电话：<span>021-64789808</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-offset-1 col-md-5  ">
                        <!-- MULTI CHARTS-->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-calendar" aria-hidden="true"></i>日历</h3>
                            </div>
                            <div class="panel-body">
                                <div id="calendar"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <ul id="myTab" class="nav nav-tabs">
                    <li ><a href="#huiyuanshu" data-toggle="tab"> 会员数</a></li>
                    <li class="active"><a href="#nongjishu" data-toggle="tab">农机数</a></li>
                    <li><a href="#dingdanshu" data-toggle="tab">订单数</a></li>
                    <li><a href="#dingdane" data-toggle="tab">订单额</a></li>

                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade " id="huiyuanshu">
                        <p>《DotA》（Defense of the Ancients），可以译作守护古树、守护遗迹、远古遗迹守卫， 是由暴雪公司出品即时战略游戏《魔兽争霸3》的一款多人即时对战、自定义地图，可支持10个人同时连线游戏，是暴雪公司官方认可的魔兽争霸的RPG地图。</p>
                    </div>
                    <div class="tab-pane fade in active" id="nongjishu">


                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Bordered Table</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <table class="table table-bordered">
                                    <tr>
                                        <th style="width: 10px">#</th>
                                        <th>Task</th>
                                        <th>Progress</th>
                                        <th style="width: 40px">Label</th>
                                    </tr>
                                    <tr>
                                        <td>1.</td>
                                        <td>Update software</td>
                                        <td>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-red">55%</span></td>
                                    </tr>
                                    <tr>
                                        <td>2.</td>
                                        <td>Clean database</td>
                                        <td>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-yellow" style="width: 70%"></div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-yellow">70%</span></td>
                                    </tr>
                                    <tr>
                                        <td>3.</td>
                                        <td>Cron job running</td>
                                        <td>
                                            <div class="progress xs progress-striped active">
                                                <div class="progress-bar progress-bar-primary" style="width: 30%"></div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-light-blue">30%</span></td>
                                    </tr>
                                    <tr>
                                        <td>4.</td>
                                        <td>Fix and squish bugs</td>
                                        <td>
                                            <div class="progress xs progress-striped active">
                                                <div class="progress-bar progress-bar-success" style="width: 90%"></div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-green">90%</span></td>
                                    </tr>
                                </table>
                            </div><!-- /.box-body -->

                        </div>



                    </div>
                    <div class="tab-pane fade" id="dingdanshu">


                        <div class="tab-pane fade" id="dingdane">
                            <p>《英雄联盟》（简称lol）是由美国Riot Games开发，中国大陆地区由腾讯游戏运营的网络游戏。</p>
                        </div>

                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT -->
        </div>


        <div class="clearfix"></div>

    </div>

    <div class="clearfix"></div>

</div>
<!-- END WRAPPER -->


<!-- Javascript -->
<script src="../../assets/vendor/jquery/jquery.min.js"></script>
<script src="../../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="../../assets/vendor/chartist/js/chartist.min.js"></script>
<script src="../../assets/scripts/klorofil-common.js"></script>

<!--/.fluid-container-->
<script src="../../assets/vendors/jquery-1.9.1.min.js"></script>
<script src="../../assets/vendors/jquery-ui-1.10.3.js"></script>
<script src="../../assets/vendors/fullcalendar/fullcalendar.js"></script>

<script>
    $(function() {
        // Easy pie charts
        var calendar = $('#calendar').fullCalendar({
            header: {
                left: 'prev,next',
                center: 'title',
                /*right: 'month,basicWeek,basicDay'*/
            },
            selectable: true,
            selectHelper: true,
            select: function(start, end, allDay) {
                var title = prompt('Event Title:');
                if (title) {
                    calendar.fullCalendar('renderEvent',
                        {
                            title: title,
                            start: start,
                            end: end,
                            allDay: allDay
                        },
                        true // make the event "stick"
                    );
                }
                calendar.fullCalendar('unselect');
            },
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            },
            editable: true,
            // US Holidays
            events: 'http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic'

        });
    });

    $('#external-events div.external-event').each(function() {

        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
        // it doesn't need to have a start or end
        var eventObject = {
            title: $.trim($(this).text()) // use the element's text as the event title
        };

        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject);

        // make the event draggable using jQuery UI
        $(this).draggable({
            zIndex: 999999999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
        });

    });

    $(function() {
        var data, options;

        // headline charts
        data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
                [23, 29, 24, 40, 25, 24, 35],
                [14, 25, 18, 34, 29, 38, 44],
            ]
        };

        options = {
            height: 300,
            showArea: true,
            showLine: false,
            showPoint: false,
            fullWidth: true,
            axisX: {
                showGrid: false
            },
            lineSmooth: false,
        };

        new Chartist.Line('#headline-chart', data, options);


        // visits trend charts
        data = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            series: [{
                name: 'series-real',
                data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
            }, {
                name: 'series-projection',
                data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
            }]
        };

        options = {
            fullWidth: true,
            lineSmooth: false,
            height: "270px",
            low: 0,
            high: 'auto',
            series: {
                'series-projection': {
                    showArea: true,
                    showPoint: false,
                    showLine: false
                },
            },
            axisX: {
                showGrid: false,

            },
            axisY: {
                showGrid: false,
                onlyInteger: true,
                offset: 0,
            },
            chartPadding: {
                left: 20,
                right: 20
            }
        };

        new Chartist.Line('#visits-trends-chart', data, options);


        // visits chart
        data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
                [6384, 6342, 5437, 2764, 3958, 5068, 7654]
            ]
        };

        options = {
            height: 300,
            axisX: {
                showGrid: false
            },
        };

        new Chartist.Bar('#visits-chart', data, options);


        // real-time pie chart
        var sysLoad = $('#system-load').easyPieChart({
            size: 130,
            barColor: function(percent) {
                return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
            },
            trackColor: 'rgba(245, 245, 245, 0.8)',
            scaleColor: false,
            lineWidth: 5,
            lineCap: "square",
            animate: 800
        });

        var updateInterval = 3000; // in milliseconds

        setInterval(function() {
            var randomVal;
            randomVal = getRandomInt(0, 100);

            sysLoad.data('easyPieChart').update(randomVal);
            sysLoad.find('.percent').text(randomVal);
        }, updateInterval);

        function getRandomInt(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

    });

    //获取系统当前时间
    function getCurDate()
    {
        var d = new Date();
        var week;
        switch (d.getDay()){
            case 1: week="星期一"; break;
            case 2: week="星期二"; break;
            case 3: week="星期三"; break;
            case 4: week="星期四"; break;
            case 5: week="星期五"; break;
            case 6: week="星期六"; break;
            default: week="星期天";
        }
        var years = d.getFullYear();
        var month = add_zero(d.getMonth()+1);
        var days = add_zero(d.getDate());
        var hours = add_zero(d.getHours());
        var minutes = add_zero(d.getMinutes());
        var seconds=add_zero(d.getSeconds());
        var ndate = years+"年"+month+"月"+days+"日 "+hours+":"+minutes+":"+seconds+" "+week;
        var divT=document.getElementById("logInfo");
        divT.innerHTML= ndate;
    }
    function add_zero(temp)
    {
        if(temp<10) return "0"+temp;
        else return temp;
    }
    setInterval("getCurDate()",100);
</script>
</body>
</html>
