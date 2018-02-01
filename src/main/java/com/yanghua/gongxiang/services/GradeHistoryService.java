package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.GradeHistory;
import com.yanghua.gongxiang.dao.GradeHistoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GradeHistoryService {
    @Autowired
    private GradeHistoryMapper gradeHistoryMapper;

    public List<GradeHistory> getAll() {
        List<GradeHistory> gradeHistories = gradeHistoryMapper.selectByExample(null);
        return gradeHistories;

    }
}
