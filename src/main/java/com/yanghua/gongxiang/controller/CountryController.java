package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.BasCities;
import com.yanghua.gongxiang.bean.BasCounties;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.CityService;
import com.yanghua.gongxiang.services.CountyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CountryController {
    @Autowired
    CountyService countyService;

    @RequestMapping("/counties/{cityId}")
    @ResponseBody
    public Msg getCounties(@PathVariable("cityId")Integer father){
        List<BasCounties> counties = countyService.getAll(father);
        return Msg.success().add("counties",counties);
    }
}
