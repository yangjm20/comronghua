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
<jsp:include page="gradeLevel_add.jsp"></jsp:include>
<jsp:include page="gradeLevel_update.jsp"></jsp:include>
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
                        <li><a href="#tab3" data-toggle="tab" id="level_set">等级设置</a></li>
                        <li><a href="#tab4" data-toggle="tab" id="grade_set">积分设置</a></li>
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
                                        <input type="email" class="form-control " id="inputAccessKeyId"
                                               placeholder="LTAIlDNf2We7bQmV" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">AccessKeySecret</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputAccessKeySecret"
                                               placeholder="3voWAbHO3KcJy9JoZUopkREbPVkD9f" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">发送的手机号</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputPhone"
                                               placeholder="18018592558" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">短信签名</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputSignName"
                                               placeholder="阿里云短信测试专用" disabled>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">短信模板</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputTemplateCode"
                                               placeholder="SMS_123870076" disabled>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">内容设置</label>
                                    <div class="col-sm-2">
                                        <input type="password" class="form-control" id="inputTemplateParam"
                                               placeholder="模板中的变量替换JSON串,如模板内容为" 亲爱的${name},您的验证码为${code}"时" disabled>
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
                        <div class="tab-pane" id="tab3">
                            <table class="table table-hover col-lg-4" id="gradeLevel_table">
                                <thead>
                                <tr>
                                    <td>#</td>
                                    <td>等级名称</td>
                                    <td>最大积分值</td>
                                    <td>操作
                                        <button class="btn btn-primary btn-sm col-xm-offset-3" id="gradeLevel_add_btn">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                            新增
                                        </button>
                                    </td>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab4">
                            <table class="table table-hover col-lg-4" id="gradeAction_table">
                                <thead>
                                <tr>
                                    <td>#</td>
                                    <td>积分动作</td>
                                    <td>积分值</td>
                                    <td>操作
                                        <button class="btn btn-primary btn-sm col-xm-offset-3" id="gradeAction_add_btn">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                            新增
                                        </button>
                                        <button class="btn btn-primary btn-sm col-xm-offset-3" id="gradeAction_query_btn">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                            积分记录查询
                                        </button>
                                    </td>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
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
<script type="text/javascript">
    $("#grade_set").click(function () {

        $.ajax({
            url: "${APP_PATH}/gradeActions",
            type: "get",
            success: function (result) {
                console.log(result);
                build_gradeAction_table(result);
                //build_page_info(result);
                //build_page_nav(result);
            }
        });
    });

    function build_gradeAction_table(result) {
        $("#gradeAction_table tbody").empty();
        var gradeAction = result.extend.gradeActions;
        $.each(gradeAction, function (index, item) {
            var gradeActionId = $("<td></td>").append(item.id);
            var actionName = $("<td></td>").append(item.actionName);
            var actionVal = $("<td></td>").append(item.actionVal);

            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            editBtn.attr("edit_id", item.id);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            delBtn.attr("delete_id", item.id);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            $("<tr></tr>").append(gradeActionId)
                .append(actionName)
                .append(actionVal)
                .append(btnTd)
                .appendTo("#gradeAction_table tbody");

        })
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
                    window.location.reload();
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
                window.location.reload();
            }
        })
    });

    $(document).on("click",".delete_btn",function () {

        var gradeActionid=$(this).attr("delete_id");
        var gradeActionName=$(this).parents("tr").find("td:eq(2)").text();

        if(confirm("确定要删除【"+gradeActionName+"】吗")){
            deleGradeAction(gradeActionid);
            //toPage(pageNum);
        }
    });

    function deleGradeAction(gradeActionid){
        $.ajax({
            url:"${APP_PATH}/gradeAction/"+gradeActionid,
            type:"DELETE",
            success:function (result) {
                window.location.reload();
            }
        });
    }

    $("#gradeAction_query_btn").click(function () {
        window.location.href="${APP_PATH}/grade-history";
    });

</script>
<script type="text/javascript">
    $("#level_set").click(function () {

        $.ajax({
            url: "${APP_PATH}/gradelevels",
            type: "get",
            success: function (result) {
                console.log(result);
                //1.解析并显示员工数据
                build_gradeLevel_table(result);
                //build_page_info(result);
                //build_page_nav(result);
            }
        });
    });

    function build_gradeLevel_table(result) {
        $("#gradeLevel_table tbody").empty();
        var gradeAction = result.extend.gradeLevels;
        $.each(gradeAction, function (index, item) {
            var gradeLevelId = $("<td></td>").append(item.id);
            var levelName = $("<td></td>").append(item.name);
            var scoreVal = $("<td></td>").append(item.maxScore);

            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm level_edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            editBtn.attr("level_edit_id", item.id);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm level_delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            delBtn.attr("level_delete_id", item.id);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            $("<tr></tr>").append(gradeLevelId)
                .append(levelName)
                .append(scoreVal)
                .append(btnTd)
                .appendTo("#gradeLevel_table tbody");

        })
    }


    //点击新增按钮弹出一个添加员工的模态框
    $("#gradeLevel_add_btn").click(function () {
        resetAll("#gradeLevelAddModel form");

        //弹出模态框
        $("#gradeLevelAddModel").modal({
            backdrop: "static"
        })
    });

    function resetAll(elm) {
        $(elm)[0].reset();
        $(elm).find("*").removeClass("has-success has-error");
        $(elm).find(".help-block ").text("");
    }

    //点击保存，保存模态框
    $("#save_gradeLevel_btn").click(function () {
        //发送ajax请求保存用户
        save_gradeLevel();
    });

    function save_gradeLevel() {

        $.ajax({
            url: "${APP_PATH}/gradeLevel",
            type: "POST",
            data: $("#gradeLevelAddModel form").serialize(),
            success: function (result) {
                // console.log(result);

                if (result.code == 100) {
                    $("#gradeLevelAddModel").modal("hide");
                    alert("设置成功");
                    window.location.reload();
                } else {
                    alert("设置失败");
                }
            }
        });
    }

    $(document).on("click", ".level_edit_btn", function () {

        //1.查询积分事件表
        getGradeLevel($(this).attr("level_edit_id"));
        $("#update_gradeLevel_btn").attr("level_edit_id", $(this).attr("level_edit_id"));
        //弹出模态框
        $("#gradeLevelUpdateModel").modal({
            backdrop: "static"
        })
    });

    function getGradeLevel(id) {
        $.ajax({
            url: "${APP_PATH}/gradeLevel/" + id,
            type: "GET",
            success: function (result) {
                var gradeLevel = result.extend.gradeLevel;
                $("#name_update_input").val(gradeLevel.name);
                $("#maxScore_update_input").val(gradeLevel.maxScore);
                $("#gradeLevelUpdateModel input[name=status]").val(gradeLevel.status);
            }
        });
    }

    $("#update_gradeLevel_btn").click(function () {
        $.ajax({
            url: "${APP_PATH}/gradeLevel/" + $(this).attr("level_edit_id"),
            type: "PUT",
            data: $("#gradeLevelUpdateModel form").serialize(),
            success: function (result) {
                $("#gradeLevelUpdateModel").modal("hide");
                alert("更新成功");
                window.location.reload();
            }
        })
    });

    $(document).on("click",".level_delete_btn",function () {

        var id=$(this).attr("level_delete_id");
        var gradeLevelName=$(this).parents("tr").find("td:eq(2)").text();

        if(confirm("确定要删除【"+gradeLevelName+"】吗")){
            deleGradeLevel(id);
            //toPage(pageNum);
        }
    });

    function deleGradeLevel(id){
        $.ajax({
            url:"${APP_PATH}/gradeLevel/"+id,
            type:"DELETE",
            success:function (result) {
                window.location.reload();
            }
        });
    }
</script>
</body>
</html>
