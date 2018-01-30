package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.BasRegions;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.ProvinceService;
import com.yanghua.gongxiang.services.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class RegionController {
    @Autowired
    RegionService regionService;

    @Autowired
    ProvinceService provinceService;

    @RequestMapping("/regions")
    @ResponseBody
    public Msg getRegions(){
        List<BasRegions> regions = regionService.getAll();
        return Msg.success().add("regions",regions);
    }

    @RequestMapping("/regionsById/{regionId}")
    @ResponseBody
    public Msg regionsById(@PathVariable("regionId") Integer regionId){

        String provinceIds = regionService.getProvinceIds(regionId);
        List<BasProvinces> provinces = provinceService.getProvinceByInIds(provinceIds);
        return Msg.success().add("provinces",provinces);
    }
}
