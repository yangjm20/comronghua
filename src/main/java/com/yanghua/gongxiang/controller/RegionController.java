package com.yanghua.gongxiang.controller;

import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.BasRegions;
import com.yanghua.gongxiang.bean.Msg;
import com.yanghua.gongxiang.services.ProvinceService;
import com.yanghua.gongxiang.services.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
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
        if(provinceIds.isEmpty()){
            return Msg.fail();
        }
        List<BasProvinces> provinces = provinceService.getProvinceByInIds(provinceIds);

        return Msg.success().add("provinces",provinces);
    }


    /**
     * 向管理区域中添加省份
     * @param str
     * @return
     */
    @RequestMapping(value = "/editRegion/{str}",method = RequestMethod.POST)
    @ResponseBody
    public Msg editRegionsById(@PathVariable("str")String str){

        String[] split = str.split(",");
        Integer regionID=Integer.parseInt(split[1]);
        System.out.println(regionID);
        boolean isSuccess = regionService.insertProvince(regionID, split[0]);
        if(isSuccess){

            return Msg.success();
        }else{
            return Msg.fail();
        }
    }

    /**
     * 从管理区域中删除省份
     * @param str
     * @return
     */
    @RequestMapping(value = "/deleteRegion/{str}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg delensById(@PathVariable("str")String str){
        String[] split = str.split(",");
        Integer regionID=Integer.parseInt(split[1]);
        boolean isSuccess = regionService.deleteProvince(regionID, split[0]);
        if(isSuccess){
            return Msg.success();
        }else{
            return Msg.fail();
        }
    }


}
