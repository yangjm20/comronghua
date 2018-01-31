package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.GradeAction;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.GradeActionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class GradeActionController {
    @Autowired
    private GradeActionService gradeActionService;

    @RequestMapping("/gradeActions")
    @ResponseBody
    public Msg getGradeAction(){
        List<GradeAction> gradeActionList=gradeActionService.getAll();
        return Msg.success().add("gradeActions",gradeActionList);
    }
}
