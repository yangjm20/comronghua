package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.ContentType;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.ContentTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ContentTypeController {
    @Autowired
    ContentTypeService contentTypeService;

    @RequestMapping(value = "/contentTypes")
    @ResponseBody
    public Msg getContentType(){
        List<ContentType> contentTypes=contentTypeService.getAll();
        return Msg.success().add("contentTypes",contentTypes);
    }

    /**
     * @Author SZ
     * @return
     */
    @RequestMapping(value = "/contentTypes_edit")
    @ResponseBody
    public Msg getContentType_edit(){
        List<ContentType> contentTypes=contentTypeService.getAll();
        return Msg.success().add("contentTypes",contentTypes);
    }
}
