package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.Depts;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProvinceController {
    @Autowired
    ProvinceService provinceService;

    @RequestMapping("/provinces")
    @ResponseBody
    public Msg getProvince(){
        List<BasProvinces> provinces = provinceService.getAll();
        return Msg.success().add("provinces",provinces);
    }
}
