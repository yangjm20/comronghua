package com.yanghua.gongxiang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SysSet {

    @RequestMapping("/sysset")
    public String showSysSet(){
        return "sys-set";
    }

    @RequestMapping("/sysuser")
    public String showSysUser(){
        return "sys-users";
    }

    @RequestMapping("/sysrole")
    public String showSysRole(){
        return "sys-role";
    }

    @RequestMapping("/sysdata")
    public String showSysData(){
        return "sys-data";
    }
}
