<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/24
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        request.setAttribute("APP_PATH",request.getContextPath());
    %>
    <title>角色管理</title>
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


    <link rel="stylesheet" href="${APP_PATH}/css/bootstrapStyle/bootstrapStyle.css" type="text/css">

</head>

<body>
<jsp:include page="role_add.jsp"></jsp:include>
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

        <div class="container">
            <div class="row">
                <div class="col-xs-9 ">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <span>角色列表</span>

                        </div>

                        <div class="panel-body">
                            <table class="table table table-bordered" id="roles_tables">

                                <thead>
                                    <tr>
                                        <td colspan="2">
                                            <span class="col-md-2 col-lg-offset-10"><button type="button" id="role_add_model_btn" class="btn btn-primary">添加角色</button></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>角色名称</td>
                                        <td>角色访问权限</td>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>

                            </table>

                        </div>
                    </div>
                </div>
            </div


            <%--<div class="row" >
                <div class="col-xs-9 ">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            新增角色

                        </div>
                        <div class="panel-body">
                            <table class="table table table-bordered">
                                <tr>
                                    <td>角色名称</td>
                                    <td><input type="text"/></td>
                                </tr>
                                <tr>
                                    <td><span class="col-md-4 col-md-offset-0">全选</span><input class="col-md-1" type="checkbox"> </td>
                                    <td><strong class="col-md-4 col-md-offset-3">角色权限:</strong></td>
                                </tr>
                                <tr>
                                    <td ><input class="col-md-9 col-md-offset-6" type="checkbox"> </td>
                                    <td align="center">客户信息</td>
                                </tr>
                                <tr>
                                    <td align="center"><input class="col-md-9 col-md-offset-6" type="checkbox"> </td>
                                    <td align="center">日程/任务</td>
                                </tr>
                                <tr>
                                    <td align="center"><input class="col-md-9 col-md-offset-6" type="checkbox"> </td>
                                    <td align="center">项目管理</td>
                                </tr>
                                <tr>
                                    <td align="center"><input class="col-md-9 col-md-offset-6" type="checkbox"> </td>
                                    <td align="center">系统管理</td>
                                </tr>
                                <tr>
                                    <td align="center"></td>
                                    <td align="center"><button type="button" class="btn btn-info">重置</button>
                                        <button type="button" class="btn btn-primary">提交</button> </td>
                                </tr>

                            </table>

                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
        <%-- <div class="main-content">
             <div class="container-fluid">
                 <h3>角色添加</h3>
                 <p>XXXX</p>

                 &lt;%&ndash;<div class="row">
                     <div class="col-md-3">
                         <div class="panel panel-default">
                             <div class="panel panel-heading">
                                 <h4 class="panel-title">角色管理</h4>
                             </div>

                             <div class="panel-body">
                                 <p>fdsfsadfs</p>
                                 <ul id="treeDemo" class="ztree"></ul>
                             </div>
                         </div>
                     </div>

                   <div class="col-md-3">
                         <div class="panel panel-default">
                             <div class="panel panel-heading">
                                 <h4 class="panel-title">功能访问授权</h4>
                             </div>

                             <div class="panel-body">
                                 <p>fdsfsadfs</p>
                                 <ul id="treeDemo1" class="ztree"></ul>
                             </div>
                         </div>
                     </div>
                     <div class="col-md-4">
                         <div class="panel panel-default">
                             <div class="panel panel-heading">
                                 <h4 class="panel-title">角色属性</h4>
                             </div>

                             <div class="panel-body">
                                 <p>fdsfsadfs</p>
                                 <p>fdsfsadfs</p>
                                 <p>fdsfsadfs</p>
                                 <p>fdsfsadfs</p>
                             </div>
                         </div>

                         <div class="panel panel-default">
                             <div class="panel panel-heading">
                                 <h4 class="panel-title">当前授权账号</h4>
                             </div>

                             <div class="panel-body">
                                 <p>fdsfsadfs</p>
                                 <p>fdsfsadfs</p>
                                 <p>fdsfsadfs</p>
                                 <p>fdsfsadfs</p>
                             </div>
                         </div>
                     </div>&ndash;%&gt;
             </div>
         </div>--%>
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
    $(function () {
        toPage(1);
    });

    function toPage(pn){
        $.ajax({
            url:"${APP_PATH}/roles",
            data:"pn="+pn,
            type:"get",
            success:function (result) {
                console.log(result);
                //1.解析并显示员工数据
                build_roles_table(result);
                //2.解析并显示分页信息
                //build_page_info(result);
                //3.解析显示分页条信息数据
                //build_page_nav(result);
            }
        });
    }

    function  build_roles_table(result) {
        $("#roles_tables tbody").empty();
        var roles=result.extend.pageInfo.list;
        $.each(roles,function (index,item) {

            var roleName=$("<td></td>").append(item.name);
            var rolefunc=$("<td></td>").append(item.funcs);

            $("<tr></tr>").append(roleName)
                .append(rolefunc)
                .appendTo("#roles_tables tbody");

        })
    }
</script>
<script type="text/javascript">

    $("#role_add_model_btn").click(function () {
        resetAll("#roleAddModel form");
        getContentType("#add_funcs");
        //getContentType("#add_content");
        //弹出模态框
        $("#roleAddModel").modal({
            backdrop:"static"
        })
    });

    function resetAll(elm){
        $(elm)[0].reset();
        $(elm).find("*").removeClass("has-success has-error");
        $(elm).find(".help-block ").text("");
    }

    function getContentType(elm){
        $.ajax({
            url:"${APP_PATH}/contentTypes",
            type:"GET",
            success:function (result) {
                console.log(result);
                showContentType(result,elm);
            }
        });
    }

    function showContentType(result,elm){
        $(elm).empty();
        $.each(result.extend.contentTypes,function () {
            $("<label></label>").append($("<input type='checkbox'>").attr("name","funcs").attr("value",this.id)).addClass("checkbox-inline").append(this.tpName).appendTo(elm);
        })
    }

    //点击保存，保存模态框
    $("#save_roles_btn").click(function () {
        //发送ajax请求保存用户
        save_roles();
    });

    function save_roles(){
       var funcs="";
        $.each($("input:checkbox:checked"),function () {
            var func=$(this).val();
            func +=",";
            funcs+=func;
        });
        $.ajax({
            url:"${APP_PATH}/role/"+funcs,
            type:"POST",
            data:$("#roleAddModel form").serialize(),
            success:function (result) {
                // console.log(result);

                if(result.code==100){
                    $("#roleAddModel").modal("hide");
                    alert("保存成功");
                }else{
                    alert("保存失败");
                }
            }
        });
    }


</script>

</body>

</html>
