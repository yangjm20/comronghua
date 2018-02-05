package com.yanghua.gongxiang.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.bean.Users;
import com.yanghua.gongxiang.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.*;

@Controller
public class UserController {
    @Autowired
    UsersService usersService;

    @RequestMapping("/showLogin")
    public String showLogin(){
        return "login";
    }
    @RequestMapping("/list")
       public String showList(){
        return "list";
     }

    @RequestMapping(value = "/users")
    @ResponseBody
    public Msg getUsers(@RequestParam(value = "pn",defaultValue = "1")Integer pn){
        PageHelper.startPage(pn,5);
        List<Users> users = usersService.getAll();

        PageInfo page=new PageInfo(users,5);
        return Msg.success().add("pageInfo",page);
    }


    @RequestMapping(value = "/user",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveUser(@Valid Users user,BindingResult result){
        if(result.hasErrors()){
            Map<String ,Object> map=new HashMap<String,Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for(FieldError error:fieldErrors){
                System.out.println(error.getField());
                System.out.println(error.getDefaultMessage());
                map.put(error.getField(),error.getDefaultMessage());
            }
            return Msg.fail().add("errorFields",map);
        }else{
            Date date=new Date();
            user.setCreatedTime(date);

            usersService.saveUser(user);
            return Msg.success();
        }

    }


    @RequestMapping("/checkuser")
    @ResponseBody
    public Msg checkuser(@RequestParam("userName") String username){
        String regUserName="(^[a-zA-Z0-9_-]{3,16}$)|(^[\\u2E80-\\u9FFF]{2,5}$)";
        if(!username.matches(regUserName)){
            return Msg.fail().add("va_msg","用户名必须是3-16位数字和字母的组合或中文");
        }
        //数据库用户名重复校验
        boolean isUser = usersService.checkUser(username);
        if(isUser){
            return Msg.success();
        }else{
            return Msg.fail().add("va_msg","用户名不可用");
        }

    }

    @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getUser(@PathVariable("id") Integer id){
        Users user=usersService.getUserByKey(id);
        return Msg.success().add("user",user);
    }

    @RequestMapping(value = "/user/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateUser(Users user){
        System.out.println(user);
        usersService.updateUser(user);
        return Msg.success().add("user",user);
    }

    @RequestMapping(value = "/user/{userIds}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg updateUser(@PathVariable("userIds") String ids){
        if(ids.contains(",")){
            List<Integer> del_ids=new ArrayList<Integer>();
            String[] split = ids.split(",");
            for(String idstr:split){
                Integer id=Integer.parseInt(idstr);
                del_ids.add(id);
            }
            usersService.deleteBatch(del_ids);
        }else{
            Integer id= Integer.parseInt(ids);
            usersService.deleteUser(id);
        }
        return Msg.success();

    }

}

