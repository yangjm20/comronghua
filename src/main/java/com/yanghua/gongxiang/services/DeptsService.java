package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.Depts;
import com.yanghua.gongxiang.dao.DeptsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class DeptsService {

@Autowired
    DeptsMapper deptsMapper;

    public List<Depts> getAll(){
        List<Depts> depts = deptsMapper.selectByExample(null);
        return depts;
    }
}
