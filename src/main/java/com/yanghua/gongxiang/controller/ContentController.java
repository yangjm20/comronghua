package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.ContentType;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ContentController {
    @Autowired
    ContentService contentService;

    @RequestMapping("/contents")
    @ResponseBody
    public Msg getContents(){
        List<ContentType> contents = contentService.getAll();
        return Msg.success().add("contents",contents);
    }
}
