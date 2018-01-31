<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/25
  Time: 16:23
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
<!-- 员工添加模态框 -->
<div class="modal fade" id="userAddModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">登陆账号</label>
                        <div class="col-sm-10">
                            <input type="text" name="username" class="form-control" id="userName_add_input" placeholder="userName">
                            <span class="help-block"></span>
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">昵称</label>
                        <div class="col-sm-10">
                            <input type="text" name="nickname" class="form-control" id="nickName_add_input" placeholder="nickName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="password" name="passwd" class="form-control" id="passwd_add_input" placeholder="passwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">显示名称</label>
                        <div class="col-sm-10">
                            <input type="text" name="displayName" class="form-control" id="displayName_add_input" placeholder="displayName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex_add_input1" value="0" checked="true"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex_add_input2" value="1"> 女
                            </label>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">政治面貌</label>
                        <div class="col-sm-10">
                            <input type="text" name="politics" class="form-control" id="polities_add_input" placeholder="党员">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">所属部门</label>
                        <div class="col-sm-10">
                            <select name="deptId"  id="add_deptName" class="form-control">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">所在职位</label>
                        <div class="col-sm-10">
                            <input type="text" name="title" class="form-control" id="title_add_input" placeholder="管理员">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">电子邮箱</label>
                        <div class="col-sm-10">
                            <input type="Email" name="email" class="form-control" id="email_add_input" placeholder="yangjm@163.com">
                            <span class="help-block"></span>
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10">
                            <input type="text" name="phone" class="form-control" id="phone_add_input" placeholder="15751160498">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">状态</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="status" id="status_add_input1" value="0" checked="true"> 有效
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="status" id="status_add_input2" value="1"> 无效
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">允许访问的栏目</label>
                        <div class="col-sm-4">
                            <select name="contents" id="add_content" class="form-control">
                            </select>
                        </div>
                    </div>

                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="save_users_btn" class="btn btn-primary">保存</button>
            </div>

        </div>
    </div>
</div>
</html>
