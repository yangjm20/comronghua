package com.yanghua.gongxiang.test;

import com.yanghua.gongxiang.bean.BasCounties;
import com.yanghua.gongxiang.bean.BasCountiesExample;
import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.Company;
import com.yanghua.gongxiang.dao.BasCountiesMapper;
import com.yanghua.gongxiang.dao.BasProvincesMapper;
import com.yanghua.gongxiang.dao.CompanyMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class CompanyTest {

    @Autowired
    CompanyMapper companyMapper;

    @Autowired
    BasProvincesMapper basProvincesMapper;

    @Autowired
    BasCountiesMapper basCountiesMapper;

    @Test
    public void getCompany(){
        Company company = companyMapper.selectByPrimaryKey(1);
        System.out.println(company);
    }

    @Test
    public void getProvi(){
        List<BasProvinces> basProvinces = basProvincesMapper.selectByExample(null);
        System.out.println(basProvinces);
    }

    @Test
    public void getCounties(){
        BasCountiesExample example=new BasCountiesExample();
        BasCountiesExample.Criteria criteria=example.createCriteria();
        criteria.andFatherEqualTo(320000);
        List<BasCounties> basCounties = basCountiesMapper.selectByExample(example);
        System.out.println(basCounties);
    }
}
