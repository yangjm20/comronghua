package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.BasCounties;
import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.BasProvincesExample;
import com.yanghua.gongxiang.bean.Depts;
import com.yanghua.gongxiang.dao.BasProvincesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProvinceService {
    @Autowired
    BasProvincesMapper provincesMapper;

    public List<BasProvinces> getAll(){
        List<BasProvinces> provinces = provincesMapper.selectByExample(null);
        return provinces;
    }
    public List<BasProvinces> getProvinceByInIds(String ids){
        //解析大区表里面的省份ids
        List<Integer> proIds=new ArrayList<Integer>();
        String[] split = ids.split(",");
        for(String str:split){
            proIds.add(Integer.parseInt(str));
        }
        BasProvincesExample example=new BasProvincesExample();
        BasProvincesExample.Criteria criteria=example.createCriteria();
        criteria.andProvinceidIn(proIds);
        List<BasProvinces> provinces = provincesMapper.selectByExample(example);
        return provinces;

    }
}
