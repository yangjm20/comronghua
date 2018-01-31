package com.yanghua.gongxiang.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.bean.Roles;
import com.yanghua.gongxiang.services.ContentTypeService;
import com.yanghua.gongxiang.services.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private ContentTypeService contentTypeService;

    @RequestMapping(value = "/roles")
    @ResponseBody
    public Msg getRoles(@RequestParam(value = "pn",defaultValue = "1")Integer pn){
        PageHelper.startPage(pn,5);
        List<Roles> rolesList = roleService.getAll();
        for(Roles role:rolesList){
            String funcs = role.getFuncs();
            String[] split = funcs.split(",");
            String funcName="";
            for(String funcId:split){
                String name=contentTypeService.getFuncName(Integer.parseInt(funcId));
                name=name+",";
                funcName+=name;
            }
            role.setFuncs(funcName.substring(0,funcName.length()-1));
        }
        PageInfo page=new PageInfo(rolesList,5);
        return Msg.success().add("pageInfo",page);
    }

    @RequestMapping(value="/role/{func}",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveRole(Roles roles){
        System.out.println(roles);
        roleService.saveRole(roles);
        return Msg.success();
    }

}
