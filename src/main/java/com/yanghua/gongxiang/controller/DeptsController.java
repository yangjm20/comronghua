package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.Depts;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.DeptsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DeptsController {

    @Autowired
    DeptsService deptsService;

    @RequestMapping("/depts")
    @ResponseBody
    public Msg getDepts(){
        List<Depts> depts = deptsService.getAll();
        return Msg.success().add("depts",depts);
    }
}
