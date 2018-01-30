package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.BasRegions;
import com.yanghua.gongxiang.dao.BasProvincesMapper;
import com.yanghua.gongxiang.dao.BasRegionsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegionService {
    @Autowired
    BasRegionsMapper regionsMapper;

    public List<BasRegions> getAll(){
        List<BasRegions> regions = regionsMapper.selectByExample(null);
        return regions;
    }

    public String getProvinceIds(Integer regionId) {
        BasRegions basRegions = regionsMapper.selectByPrimaryKey(regionId);
        return basRegions.getProvIds();
    }
}
