package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.RoleUsers;
import com.yanghua.gongxiang.bean.Users;
import com.yanghua.gongxiang.services.RoleService;
import com.yanghua.gongxiang.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller

public class TestSecurityController {
    @Autowired
    UsersService usersService;
    //   用于测试Mybatis和权限设置
    @Autowired
    RoleService roleService;

    @RequestMapping("/logout")
    public String showSysSet(){
        return "login";
    }

    @RequestMapping("/test_security_jump")
    public String jump(){

        return "test_security_jump";
    }
    @RequestMapping("/test_security_login")
    public String login(){
        return "login";
    }
    @RequestMapping("/test_security_error")
    public String error(){
        return "test_security_error";
    }

    @RequestMapping("/test_mylogin_security")
    public String mylogin(){
        return "test_mylogin_security";
    }
    @RequestMapping("/login_test2")
    public String login_to_normal(){
        return "login";
    }

@RequestMapping(value = "/test_mybatis_users")
@ResponseBody
public List<Users> FindUserController() {
    return usersService.testfindUserByUsername();
}

    @RequestMapping(value = "/test_mybatis_usersbyname")
    @ResponseBody
    public Users FindUserBynameController() {
        String username = "admin";
        Users user=usersService.findUserByUsername(username);
        System.out.println(user);
        return user;
    }

    @RequestMapping(value = "/test_mybatis_funcs")
    @ResponseBody
    public RoleUsers FindFuncsByUser_id() {
        Integer userId = 1;
        System.out.print(roleService.findRolesFuncsByUserId(userId));
        return roleService.findRolesFuncsByUserId(userId);

    }

    @RequestMapping(value = "/back/denied")
    public String haveNoRole() {
        return "denied";

    }
}
