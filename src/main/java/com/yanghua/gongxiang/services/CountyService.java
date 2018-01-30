package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.BasCities;
import com.yanghua.gongxiang.bean.BasCitiesExample;
import com.yanghua.gongxiang.bean.BasCounties;
import com.yanghua.gongxiang.bean.BasCountiesExample;
import com.yanghua.gongxiang.dao.BasCitiesMapper;
import com.yanghua.gongxiang.dao.BasCountiesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountyService {
    @Autowired
    BasCountiesMapper countiesMapper;

    public List<BasCounties> getAll(Integer father){
        BasCountiesExample example=new BasCountiesExample();
        BasCountiesExample.Criteria criteria=example.createCriteria();
        criteria.andFatherEqualTo(father);
        List<BasCounties> counties =countiesMapper.selectByExample(example);
        return counties;
    }
}
