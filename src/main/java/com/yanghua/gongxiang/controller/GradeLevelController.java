package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.GradeAction;
import com.yanghua.gongxiang.bean.GradeLevel;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.GradeLevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
public class GradeLevelController {
    @Autowired
    private GradeLevelService gradeLevelService;

    @RequestMapping("gradelevels")
    @ResponseBody
    public Msg getGradeLevels(){
        List<GradeLevel> gradeLevels= gradeLevelService.getAll();
        return Msg.success().add("gradeLevels",gradeLevels);
    }

    @RequestMapping(value = "/gradeLevel",method = RequestMethod.POST)
    @ResponseBody
    public Msg SaveGradeLevel(GradeLevel gradeLevel){
        Date date = new Date();
        gradeLevel.setStatus((byte) 0);
        gradeLevel.setCreatedTime(date);
        gradeLevel.setCreatedId(0);
        gradeLevelService.saveGradeLevel(gradeLevel);
        return Msg.success();
    }

    @RequestMapping(value = "/gradeLevel/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getGradeLevel(@PathVariable("id")Integer id){
        GradeLevel gradeLevel=gradeLevelService.selectGradeLevel(id);
        return Msg.success().add("gradeLevel",gradeLevel);
    }

    @RequestMapping(value = "/gradeLevel/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateGradeLevel(GradeLevel gradeLevel){
        gradeLevelService.updateGradeLevel(gradeLevel);
        return Msg.success();
    }

    @RequestMapping(value = "/gradeLevel/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteGradeLevel(@PathVariable("id") Integer id){
        gradeLevelService.deleteGradeLevel(id);
        return Msg.success();
    }
}
