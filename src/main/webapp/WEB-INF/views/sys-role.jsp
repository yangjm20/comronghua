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
<jsp:include page="role_update.jsp"></jsp:include>
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
                                        <td colspan="3">
                                            <span class="col-md-2 col-lg-offset-10"><button type="button" id="role_add_model_btn" class="btn btn-primary">添加角色</button></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>角色名称</td>
                                        <td>角色访问权限</td>
                                        <td>操作</td>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>

                            </table>
                            <!-- 显示分页信息-->
                            <div class="row">
                                <div class="col-md-6" id="page_info_area">

                                </div>
                                <!--分页条信息-->
                                <div class="col-md-6" id="page_info_nav">

                                </div>
                            </div>
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
    var totalPages;
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
                build_page_info(result);
                //3.解析显示分页条信息数据
                build_page_nav(result);
            }
        });
    }

    function  build_roles_table(result) {
        $("#roles_tables tbody").empty();
        var roles=result.extend.pageInfo.list;
        $.each(roles,function (index,item) {

            var roleName=$("<td></td>").append(item.name);
            var rolefunc=$("<td></td>").append(item.funcs);

            //新添加 SZ
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("修改");
            //为编辑按钮添加一个自定义的属性，来表示当前员工id
            editBtn.attr("edit_id",item.id);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除"); //在button里面添加上<span>元素
            //新添加
            delBtn.attr("delete_id",item.id);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);

            $("<tr></tr>").append(roleName)
                .append(rolefunc)
                .append(btnTd)
                .appendTo("#roles_tables tbody");

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
                    window.location.reload();
                }else{
                    alert("保存失败");
                }
            }
        });
    }
    //SZ
    //新增  按钮绑定点击事件
    function getContentType_edit(elm){
        $.ajax({
            url:"${APP_PATH}/contentTypes_edit",
            type:"GET",
            success:function (result) {
                console.log(result);
                showContentType_edit(result,elm);
            }
        });
    }
    //展示
    function showContentType_edit(result,elm){
        $(elm).empty();
        // getRole($(this).attr("edit_id"));
        $.each(result.extend.contentTypes,function () {
            // $.each(,function () {
            // if(for_type.type=result.extend.type){
            // $("<label></label>").append($("<input type='checkbox' checked>").attr("name","funcs").attr("value",this.id)).addClass("checkbox-inline").append(this.tpName).appendTo(elm);
            // }else
            // {
            $("<label></label>").append($("<input type='checkbox'>").attr("name","funcs").attr("value",this.id)).addClass("checkbox-inline").append(this.tpName).appendTo(elm);
            // }

            // });

        });
    }
    <%--展示checkbook的新方法--%>
    <%--01 需要后台传入contenType的名称值，用于显示name名称--%>
    <%--02 需要后台传入funcs的值，最好是已经切分好的--%>
    //live可以为以后添加的事件绑定，jquery新版本里面没有live方法，使用on来代替
    $(document).on("click",".edit_btn",function(){
        // getDepts("#empEditModal select");
        // getEmp($(this).attr("edit-id"));
        //待修改
        //获取后台的部门信息内容
        //添加过多信息，会比较复杂  msg巧妙使用
        // getContentType("#roleEditModel select");
        //给更新按钮做准备
        //查处角色信息，相当于在此处传入id
        getRole($(this).attr("edit_id"));
        //把role的ID传递过去
        // $("edit_roles_btn").attr("edit_id",$(this).attr("edit_id"));
        getContentType_edit("#edit_funcs");
        $("#edit_roles_btn").attr("edit_id",$(this).attr("edit_id"));

        $("#roleEditModel").modal({
            backdrop:"static"
        })
    });

    //    找到角色信息,发送请求
    //注意要把参数传过来，否则会无法弹出对话框
    function getRole(id){
        $.ajax({
            url:"${APP_PATH}/role/"+id,
            type:"GET",
            success:function(result){
                console.log(result);
                var roleData = result.extend.role;
                $("#roleName_edit_static").text(roleData.name);
                //  // $("#userUpdateModel select[name=deptId]").val([user.deptId]);
                $("#roleType_edit_static").text(roleData.name).append("(").append(roleData.roleType).append(")");
                $("#roleEditModel input[name=status]").val([roleData.status]);
                // $("#roleEditModel input[name=funcs]").val(roleData.funcs);
                // return roleData;

            }
        });

        $("#edit_roles_btn").click(function () {
            //    发送ajax请求，保存更新的
            $.ajax({
                url:"${APP_PATH}/role/"+$(this).attr("edit_id"),
                //  要和控制器接收相同的请求模式
                type:"POST",
                //  此处用于带上put请求
                data:$("#roleEditModel form").serialize()+"&_method=PUT",
                success:function(result) {
                    // alert(result.msg);
                    //  $("#roleEditModel").modal("hide");
                    //  //2、回到本页面
                    //  to_page(currentPage);
                    //    关闭对话框
                    $("#roleEditModel").modal("hide");
                    window.location.reload();
                    //    回到本页面
                    //????等合并的时候来写
                }
            });

        });
    }
    //新增代码块  删除
    $(document).on("click",".delete_btn",function () {
        //1、弹出是否确认删除对话框,弹出名字
        //    alert($(this).parents("tr").find("td:eq(1)").text());
        var roleName =$(this).parents("tr").find("td:eq(1)").text();
        var roleId = $(this).attr("delete_id");
        if(confirm("确认删除【"+roleName+"】吗？")){
            //        确认，发送ajax请求删除即可
            $.ajax({
                url:"${APP_PATH}/role/"+roleId,
                type:"DELETE",
                success:function (result) {
                    alert(result.msg);
                    //    需要添加返回某页
                }
            });
        }
    });

</script>

</body>

</html>
