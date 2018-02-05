<%--
  Created by IntelliJ IDEA.
  User: yangjm
  Date: 2018/1/24
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%
        request.setAttribute("APP_PATH",request.getContextPath());
    %>

    <title>用户管理</title>
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
<body>


<jsp:include page="user_update.jsp"></jsp:include>

<jsp:include page="user_add.jsp"></jsp:include>

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
                <div class="panel panel-profile">
                    <div class="clearfix">
                        <div class="container">

                            <div class="breadcrumbs" id="breadcrumbs">
                                <script type="text/javascript">
                                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                                </script>

                                <ul class="breadcrumb">
                                    <li>
                                        <i class="icon-home home-icon"></i>
                                        <a href="#">系统首页</a>
                                    </li>

                                    <li>
                                        <a href="#">系统管理</a>
                                    </li>
                                    <li class="active">用户管理</li>
                                </ul><!-- .breadcrumb -->
                            </div>

                            <div class=".container">

                                <div class="row">
                                    <div class="col-md-12">
                                        <h1>用户管理</h1>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4 col-md-offset-8">
                                        <button class="btn btn-primary btn-sm" id="user_add_model_btn">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                            新增
                                        </button>
                                        <button class="btn btn-danger btn-sm" id="user_delete_model_btn"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                            删除</button>
                                    </div>
                                </div>

                                //显示表格数据
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="table table-hover" id="users_tables">
                                            <thead>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" id="check_all"/>
                                                </td>
                                                <td>#</td>
                                                <td>登陆账号</td>
                                                <td>显示名称</td>
                                                <td>性别</td>
                                                <td>政治面貌</td>
                                                <td>所在职位</td>
                                                <td>电子邮箱</td>
                                                <td>联系电话</td>
                                                <td>访问栏目</td>
                                                <td>操作</td>
                                            </tr>

                                            </thead>

                                            <tbody>

                                            </tbody>

                                        </table>
                                    </div>
                                </div>

                                <!-- 显示分页信息-->
                                <div class="row">
                                    <div class="col-md-6" id="page_info_area">
                                        当前是第页,总共页,共条记录
                                    </div>
                                    <!--分页条信息-->
                                    <div class="col-md-6" id="page_info_nav">

                                    </div>
                                </div>
                            </div>

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
    //1.页面加载完成以后，直接去发送ajax请求，要到分页数据
    var totalPages;
    $(function () {
        toPage(1);
    });

    function toPage(pn){
        $.ajax({
            url:"${APP_PATH}/users",
            data:"pn="+pn,
            type:"get",
            success:function (result) {
                //console.log(result);
                build_users_table(result);
                build_page_info(result);
                build_page_nav(result);
            }
        });
    }


    function  build_users_table(result) {
        $("#users_tables tbody").empty();
        var users=result.extend.pageInfo.list;
        $.each(users,function (index,item) {
            var checkBoxTd=$("<td></td>").append($("<input type='checkbox' class='check_item'/>"));
            var userID=$("<td></td>").append(item.id);
            var userName=$("<td></td>").append(item.username);
            var displayName=$("<td></td>").append(item.displayName);
            var sex=$("<td></td>").append(item.sex==0?"男":"女");
            var politics=$("<td></td>").append(item.politics);
            var title=$("<td></td>").append(item.title);
            var email=$("<td></td>").append(item.email);
            var phone=$("<td></td>").append(item.phone);
            var contents=$("<td></td>").append(item.contents);
            var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            editBtn.attr("edit_id",item.id);
            var delBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            delBtn.attr("delete_id",item.id);
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
            $("<tr></tr>").append(checkBoxTd)
                .append(userID)
                .append(userName)
                .append(displayName)
                .append(sex)
                .append(politics)
                .append(title)
                .append(email)
                .append(phone)
                .append(contents)
                .append(btnTd)
                .appendTo("#users_tables tbody");

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

    //点击新增按钮弹出一个添加员工的模态框
    $("#user_add_model_btn").click(function () {
        resetAll("#userAddModel form");
        getDepts("#add_deptName");
        getContents("#add_content");
        //弹出模态框
        $("#userAddModel").modal({
            backdrop:"static"
        })
    });

    function resetAll(elm){
        $(elm)[0].reset();
        $(elm).find("*").removeClass("has-success has-error");
        $(elm).find(".help-block ").text("");
    }

    function getDepts(elm){
        $.ajax({
            url:"${APP_PATH}/depts",
            type:"GET",
            success:function (result) {
                //console.log(result);
                showDepts(result,elm);
            }
        });
    }

    function getContents(elm){
        $.ajax({
            url:"${APP_PATH}/contents",
            type:"GET",
            success:function (result) {
                //console.log(result);
                showContents(result,elm);
            }
        });
    }

    function showDepts(result,elm){

        $(elm).empty();
        $.each(result.extend.depts,function () {
            $("<option></option>").append(this.name).attr("value",this.id).appendTo(elm);
        })
    }

    function showContents(result,elm){

        $(elm).empty();
        $.each(result.extend.contents,function () {
            $("<option></option>").append(this.tpName).attr("value",this.id).appendTo(elm);
        })
    }

    //检测用户名变化
    $("#userName_add_input").change(function () {
        var userName=this.value;
        $.ajax({
            url:"${APP_PATH}/checkuser",
            type:"POST",
            data:"userName="+userName,
            success:function (result) {
                if(result.code==100){
                    show_validate("#userName_add_input","success","用户名可用");
                    $("#save_users_btn").attr("ajax-va","success");
                }else{
                    show_validate("#userName_add_input","error",result.extend.va_msg);
                    $("#save_users_btn").attr("ajax-va","error");
                }
            }
        });
    });

    //点击保存，保存模态框
    $("#save_users_btn").click(function () {

        /*校验信息*/
        /* if(!validition_add_form()){
             return false;
         }*/
        //1.判断之前的ajax用户名校验是否成功，如果成功
        var ajaxValue=$(this).attr("ajax-va");
        if(ajaxValue=="error"){
            return false;
        }

        //2.发送ajax请求保存用户
        save_users();
    });

    function validition_add_form(){
        var userName=$("#userName_add_input").val();
        var userNameRe=/(^[a-zA-Z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,5}$)/;
        if(!userNameRe.test(userName)){
            show_validate("#userName_add_input","error","用户名输入不正确，要求3-16个字母或数字组合或者2-5个中文");
            return false;
        }else{
            show_validate("#userName_add_input","success","");
        }

        var email=$("#email_add_input").val();
        var emailRe=/^([a-zA-Z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
        if(!emailRe.test(email)){
            show_validate("#email_add_input","error","邮箱输入不正确，请重新输入");
            return false;
        }else{
            show_validate("#email_add_input","success","");
        }
        return true;
    }

    //显示校验结果的提示信息
    function show_validate(elm,status,msg){
        $(elm).parent().removeClass("has-success has-error");
        $(elm).next("span").text("");
        if(status=="success"){
            $(elm).parent().addClass("has-success");
            $(elm).next("span").text(msg);
        }else if(status=="error"){
            $(elm).parent().addClass("has-error");
            $(elm).next("span").text(msg);
        }
    }

    function save_users(){
        $.ajax({
            url:"${APP_PATH}/user",
            type:"POST",
            data:$("#userAddModel form").serialize(),
            success:function (result) {
                // console.log(result);


                if(result.code==100){
                    $("#userAddModel").modal("hide");
                    toPage(totalPages);
                }else{

                    if(undefined!=result.extend.errorFields.email){
                        var error=result.extend.errorFields.email;
                        show_validate("#email_add_input","error",error);

                    }

                    if(undefined!=result.extend.errorFields.username){
                        var error=result.extend.errorFields.username;
                        show_validate("#userName_add_input","error",error);
                    }
                }
            }
        });
    }

    $(document).on("click",".edit_btn",function () {

        //1.查询部门信息
        getDepts("#update_deptName");
        //2.查询栏目信息
        getContents("#update_content");
        //3.查询用户信息
        getUser($(this).attr("edit_id"));
        $("#update_users_btn").attr("edit_id",$(this).attr("edit_id"));
        //弹出模态框
        $("#userUpdateModel").modal({
            backdrop:"static"
        })
    });

    function getUser(id) {
        $.ajax({
            url:"${APP_PATH}/user/"+id,
            type:"GET",
            success:function (result) {
               var user=result.extend.user;
               $("#username_update_static").text(user.username);
               $("#nickName_update_input").val(user.nickname);
               $("#passwd_input").val(user.passwd);
               $("#displayName_update_input").val(user.displayName);
               $("#userUpdateModel input[name=sex]").val([user.sex]);
               $("#userUpdateModel select[name=deptId]").val([user.deptId]);
               $("#title_update_input").val(user.title);
               $("#email_update_input").val(user.email);
               $("#phone_update_input").val(user.phone);
               $("#userUpdateModel input[name=status]").val(user.status);
               $("#userUpdateModel select[name=contents]").val([user.contents]);
            }
        });
    }


    $("#update_users_btn").click(function () {
        //邮箱校验
        var email=$("#email_update_input").val();
        var emailRe=/^([a-zA-Z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
        if(!emailRe.test(email)){
            show_validate("#email_update_input","error","邮箱输入不正确，请重新输入");
            return false;
        }else{
            show_validate("#email_update_input","success","");
        }

        $.ajax({
            url:"${APP_PATH}/user/"+$(this).attr("edit_id"),
            type:"PUT",
            data:$("#userUpdateModel form").serialize(),
            success:function (result) {
                $("#userUpdateModel").modal("hide");
                toPage(pageNum);
            }
        })
    });

    $(document).on("click",".delete_btn",function () {

        var userid=$(this).attr("delete_id");
        var username=$(this).parents("tr").find("td:eq(2)").text();

        if(confirm("确定要删除【"+username+"】吗")){
            deleEmp(userid);
            toPage(pageNum);
        }
    });

    function deleEmp(userid){
        $.ajax({
            url:"${APP_PATH}/user/"+userid,
            type:"DELETE",
            success:function (result) {
            }
        });
    }

    $("#check_all").click(function () {
        //alert($(this).prop("checked"));
        $(".check_item").prop("checked",$(this).prop("checked"));
    });

    $(document).on("click",".check_item",function () {

        /*$(".check_item:checked").attr("user_id_check",item.id);*/

        if($(".check_item:checked").length==$(".check_item").length){
            $("#check_all").prop("checked",true);
        }else{
            $("#check_all").prop("checked",false);
        }
    })

    $("#user_delete_model_btn").click(function () {
        var userName="";
        var userIds="";
        $.each($(".check_item:checked"),function () {

            userName+=$(this).parents("tr").find("td:eq(3)").text()+",";
            userIds+=$(this).parents("tr").find("td:eq(1)").text()+",";
        });
        userName=userName.substring(0,userName.length-1);
        userIds=userIds.substring(0,userIds.length-1);
        if(confirm("确定要删除这些人："+userIds+"的信息吗")){
            $.ajax({
                url:"${APP_PATH}/user/"+userIds,
                type:"DELETE",
                success:function (result) {
                    console.log(result);
                    toPage(pageNum);
                }
            });
        }

    });


</script>
</body>

</html>
