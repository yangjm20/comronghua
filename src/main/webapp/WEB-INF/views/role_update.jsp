<%--
  Created by IntelliJ IDEA.
  User: sunzhen
  Date: 2018/2/1
  Time: 上午11:16
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
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="${APP_PATH}/assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="${APP_PATH}/assets/css/demo.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="${APP_PATH}/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="${APP_PATH}/assets/img/favicon.png">

    <!-- <script src="E:\sublime\vue.js"></script> -->
    <script src="https://unpkg.com/vue/dist/vue.min.js"></script>
</head>
<!-- 角色修改模态框 -->
<div class="modal fade" id="roleEditModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">角色修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色名称</label>
                        <div class="col-sm-10">
                            <%--改动过--%>
                            <p class="form-control-static " id="roleName_edit_static">email@example.com</p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色类型</label>
                        <div class="col-sm-10">
                            <%--<select name="roleType"  id="roleType" class="form-control">--%>
                                <%--<option value="A">管理员</option>--%>
                                <%--<option value="L">领导</option>--%>
                                <%--<option value="M">部门主管</option>--%>
                                <%--<option value="G">组长</option>--%>
                                <%--<option value="C">普通</option>--%>
                            <%--</select>--%>
                                <p class="form-control-static " id="roleType_edit_static">email@example.com</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色说明</label>
                        <div class="col-sm-10">
                            <input type="text" name="remark" class="form-control" id="remark_edit_input" placeholder="remark">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色权限</label>
                        <div class="col-sm-10" id="edit_funcs">

                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label">状态</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="status" id="status_edit_input1" value="0" checked="true"> 有效
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="status" id="status_edit_input2" value="1"> 无效
                            </label>
                        </div>
                    </div>

                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="edit_roles_btn" class="btn btn-primary">修改</button>
            </div>

        </div>
    </div>
</div>

</html>
