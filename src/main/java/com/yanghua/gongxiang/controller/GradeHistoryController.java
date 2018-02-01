package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.GradeHistory;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.GradeHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class GradeHistoryController {

    @Autowired
    private GradeHistoryService gradeHistoryService;
    @RequestMapping("/grade-history")
    public String toGradeHistory(){
        return "grade-history";
    }

    @RequestMapping("gradeHistorys")
    @ResponseBody
    public Msg getAll(){
        List<GradeHistory> gradeHistoryList=gradeHistoryService.getAll();
        System.out.println(gradeHistoryList);
        return Msg.success().add("gradeHistorys",gradeHistoryList);
    }
}
