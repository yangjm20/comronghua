package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.BasCities;
import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CityController {
    @Autowired
    CityService cityService;

    @RequestMapping("/cities/{provinId}")
    @ResponseBody
    public Msg getCities(@PathVariable("provinId")Integer father){
        List<BasCities> cities = cityService.getAll(father);
        return Msg.success().add("cities",cities);
    }
}
