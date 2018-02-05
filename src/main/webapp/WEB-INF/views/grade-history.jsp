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
    <%
        request.setAttribute("APP_PATH", request.getContextPath());
    %>

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
<jsp:include page="gradeAction_add.jsp"></jsp:include>
<jsp:include page="gradeAction_update.jsp"></jsp:include>
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
        <div class="row col-sm-offset-3">
            <h3>历史积分记录</h3>
        </div>
        <div class="row center-block">
            <table class="table table-hover col-lg-4" id="gradeHistory_table">
                <thead>
                <tr>
                    <td>#</td>
                    <td>会员用户名</td>
                    <td>获得积分</td>
                    <td>积分说明</td>
                    <td>积分产生时间</td>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

        <!-- 显示分页信息-->
        <div class="row">
            <div class="col-md-6" id="page_info_area">

            </div>
            <!--分页条信息-->
            <div class="col-md-6" id="page_info_nav">

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
<script type="text/javascript">
    //1.页面加载完成以后，直接去发送ajax请求，要到分页数据

    var totalPages;
    $(function () {
        toPage(1);
    });

    function toPage(pn){
        $.ajax({
            url: "${APP_PATH}/gradeHistorys",
            data:"pn="+pn,
            type: "get",
            success: function (result) {
                //console.log(result);
                build_gradeHistory_table(result);
                build_page_info(result);
                build_page_nav(result);
            }
        });
    }

    function build_gradeHistory_table(result) {
        $("#gradeHistory_table tbody").empty();
        var gradeAction = result.extend.pageInfo.list;
        $.each(gradeAction, function (index, item) {
            var gradeHistoryId = $("<td></td>").append(item.id);
            var memId = $("<td></td>").append(item.memId);
            var score = $("<td></td>").append(item.score);
            var note = $("<td></td>").append(item.note);
            var createdTime = $("<td></td>").append(item.createdTime);


            $("<tr></tr>").append(gradeHistoryId)
                .append(memId)
                .append(score)
                .append(note)
                .append(createdTime)
                .appendTo("#gradeHistory_table tbody");

        })
    }

    //分页信息显示

    function build_page_info(result) {
        $("#page_info_area").empty();
        $("#page_info_area").append("当前第"+ result.extend.pageInfo.pageNum+"页，","总"+result.extend.pageInfo.pages+"页数，","总共"+result.extend.pageInfo.total+"条数记录。")
        totalPages=result.extend.pageInfo.pages;
        pageNum=result.extend.pageInfo.pageNum;
    }

    //分页条信息显示
    function build_page_nav(result){

        $("#check_all").prop("checked",false);
        $("#page_info_nav").empty();
        var ul=$("<ul></ul>").addClass("pagination");
        var firstPage=$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePage=$("<li></li>").append($("<a></a>").append($("<span></span>").append("&laquo;")).attr("href","#"));


        if(result.extend.pageInfo.hasPreviousPage==false){
            firstPage.addClass("disabled");
            prePage.addClass("disabled");
        }else{
            firstPage.click(function () {
                toPage(1);
            });

            prePage.click(function () {
                toPage(result.extend.pageInfo.prePage);
            });
        }

        //添加首页和前一页的提示
        ul.append(firstPage).append(prePage);

        //1，2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function (index,item) {
            var pageNum=$("<li></li>").append($("<a></a>").attr("href","#").append(item));
            if(result.extend.pageInfo.pageNum==item){
                pageNum.addClass("active");
            }
            pageNum.click(function () {
                toPage(item);
            });
            ul.append(pageNum);
        })

        //添加下一页和末页的提示
        var nextPage=$("<li></li>").append($("<a></a>").append($("<span></span>").append("&raquo;")).attr("href","#"));
        var lastPage=$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));

        if(result.extend.pageInfo.hasNextPage==false){
            nextPage.addClass("disabled");
            lastPage.addClass("disabled");
        }else{
            nextPage.click(function () {
                toPage(result.extend.pageInfo.nextPage);
            });

            lastPage.click(function () {
                toPage(result.extend.pageInfo.pages);
            });
        }

        ul.append(nextPage).append(lastPage).appendTo("#page_info_nav");
    }


    $("#gradeAction_add_btn").click(function () {
        resetAll("#gradeActionAddModel form");

        //弹出模态框
        $("#gradeActionAddModel").modal({
            backdrop: "static"
        })
    });

    function resetAll(elm) {
        $(elm)[0].reset();
        $(elm).find("*").removeClass("has-success has-error");
        $(elm).find(".help-block ").text("");
    }

    save_gradeAction_btn

    //点击保存，保存模态框
    $("#save_gradeAction_btn").click(function () {
        //发送ajax请求保存用户
        save_gradeAction();
    });

    function save_gradeAction() {
        var funcs = "";
        $.ajax({
            url: "${APP_PATH}/gradeAction",
            type: "POST",
            data: $("#gradeActionAddModel form").serialize(),
            success: function (result) {
                // console.log(result);

                if (result.code == 100) {
                    $("#gradeActionAddModel").modal("hide");
                    alert("设置成功");
                } else {
                    alert("设置失败");
                }
            }
        });
    }

    $(document).on("click", ".edit_btn", function () {

        //1.查询积分事件表
        getGradeAction($(this).attr("edit_id"));
        $("#update_gradeAction_btn").attr("edit_id", $(this).attr("edit_id"));
        //弹出模态框
        $("#gradeActionUpdateModel").modal({
            backdrop: "static"
        })
    });

    function getGradeAction(id) {
        $.ajax({
            url: "${APP_PATH}/gradeAction/" + id,
            type: "GET",
            success: function (result) {
                var gradeAction = result.extend.gradeAction;
                $("#actionName_update_static").text(gradeAction.actionName);
                $("#actionVal_add_input").val(gradeAction.actionVal);
                $("#actionDesc_add_input").val(gradeAction.actionDesc);
            }
        });
    }

    $("#update_gradeAction_btn").click(function () {
        $.ajax({
            url: "${APP_PATH}/gradeAction/" + $(this).attr("edit_id"),
            type: "PUT",
            data: $("#gradeActionUpdateModel form").serialize(),
            success: function (result) {
                $("#gradeActionUpdateModel").modal("hide");
                alert("更新成功");
            }
        })
    });

    $("#gradeAction_query_btn").click(function () {
       $.ajax({
           url:"${APP_PATH/grade_history}"
       })
    });

</script>
</body>
</html>
