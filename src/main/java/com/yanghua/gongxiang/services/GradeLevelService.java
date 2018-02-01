package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.GradeAction;
import com.yanghua.gongxiang.bean.GradeLevel;
import com.yanghua.gongxiang.dao.GradeLevelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GradeLevelService {
    @Autowired
    private GradeLevelMapper gradeLevelMapper;

    public List<GradeLevel> getAll() {
        List<GradeLevel> gradeLevels = gradeLevelMapper.selectByExample(null);

        return gradeLevels;
    }

    public void saveGradeLevel(GradeLevel gradeLevel) {
        gradeLevelMapper.insertSelective(gradeLevel);
    }

    public GradeLevel selectGradeLevel(Integer id) {
        return gradeLevelMapper.selectByPrimaryKey(id);
    }

    public void updateGradeLevel(GradeLevel gradeLevel) {
        gradeLevelMapper.updateByPrimaryKeySelective(gradeLevel);
    }

    public void deleteGradeLevel(Integer id) {
        gradeLevelMapper.deleteByPrimaryKey(id);
    }
}
