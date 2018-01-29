package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.BasCities;
import com.yanghua.gongxiang.bean.BasCitiesExample;
import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.dao.BasCitiesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityService {
    @Autowired
    BasCitiesMapper citiesMapper;

    public List<BasCities> getAll(Integer father){
        BasCitiesExample example=new BasCitiesExample();
        BasCitiesExample.Criteria criteria=example.createCriteria();
        criteria.andFatherEqualTo(father);
        List<BasCities> cities =citiesMapper.selectByExample(example);
        return cities;
    }
}
