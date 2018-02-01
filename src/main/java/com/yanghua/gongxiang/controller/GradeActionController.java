package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.GradeAction;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.GradeActionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.crypto.Data;
import java.util.Date;
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

    @RequestMapping(value = "/gradeAction",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveGradeAction(GradeAction gradeAction){
        Date date = new Date();
        gradeAction.setStatus((byte) 0);
        gradeAction.setOrderNum((short) 0);
        gradeAction.setCreatedTime(date);
        gradeActionService.saveGradeAction(gradeAction);
        return Msg.success();
    }

    @RequestMapping(value = "/gradeAction/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getGradeAction(@PathVariable("id")Integer id){
        GradeAction gradeAction=gradeActionService.selectGradeAction(id);
        return Msg.success().add("gradeAction",gradeAction);
    }

    @RequestMapping(value = "/gradeAction/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateGradeAction(GradeAction gradeAction){
        gradeActionService.updateGradeAction(gradeAction);
        return Msg.success();
    }


}
