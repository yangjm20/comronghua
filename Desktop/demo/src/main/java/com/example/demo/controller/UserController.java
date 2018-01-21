package com.example.demo.controller;

import com.example.demo.dao.UserDao;
import com.example.demo.service.UserService;
import com.example.demo.service.impl.UserServiceImpl;
import com.example.demo.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("user")

public class UserController {


    @Autowired
    private UserServiceImpl userServiceImpl;

    @RequestMapping("/all")
    public String getUser() {
        List<UserVo> users = userServiceImpl.getUser();
        return users.get(1).getName();
    }


}
