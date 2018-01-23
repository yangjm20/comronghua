package com.yanghua.gongxiang.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yanghua.gongxiang.domain.Grade;
import com.yanghua.gongxiang.service.GradeService;




@RestController
/**@author sunzhen*/
public class GradeController {

    @Resource
    private GradeService gradeService;
    
    @RequestMapping("/getByGradeNm")
    public List<Grade> getByGradeNm(){
        return gradeService.getByGradeNm();
    }

}