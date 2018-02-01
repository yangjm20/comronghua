package com.yanghua.gongxiang.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yanghua.gongxiang.bean.GradeHistory;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.GradeHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public Msg getAll(@RequestParam(value = "pn",defaultValue = "1")Integer pn){
        PageHelper.startPage(pn,5);
        List<GradeHistory> gradeHistoryList=gradeHistoryService.getAll();
        PageInfo page=new PageInfo(gradeHistoryList,5);
        return Msg.success().add("pageInfo",page);
    }

}
