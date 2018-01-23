package com.yanghua.gongxiang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yanghua.gongxiang.dao.GradeDao;
import com.yanghua.gongxiang.domain.Grade;



//import com.example.domain.Grade;
//import com.example.mapper.GradeMapper;

//import com.wyl.bean.Grade;
//import com.wyl.dao.GradeMapper;

@Service
public class GradeService {
    
    @Autowired
    private GradeDao gradeDao;
    
    public List<Grade> getByGradeNm(){
        return gradeDao.getByGradeNm();
    }
    
}
