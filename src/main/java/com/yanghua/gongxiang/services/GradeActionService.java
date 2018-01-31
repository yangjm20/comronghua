package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.GradeAction;
import com.yanghua.gongxiang.dao.GradeActionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GradeActionService {
    @Autowired
    private GradeActionMapper gradeActionMapper;

    public List<GradeAction> getAll() {
        List<GradeAction> gradeActions = gradeActionMapper.selectByExample(null);
        return gradeActions;
    }
}
