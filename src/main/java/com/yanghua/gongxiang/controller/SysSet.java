package com.yanghua.gongxiang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SysSet {

    @RequestMapping("/admin/sysset")
    public String showSysSet(){
        return "sys-set";
    }

    @RequestMapping("/user/sysuser")
    public String showSysUser(){
        return "sys-users";
    }

    @RequestMapping("/admin/sysrole")
    public String showSysRole(){
        return "sys-role";
    }

    @RequestMapping("/admin/sysdata")
    public String showSysData(){
        return "sys-data";
    }
}
