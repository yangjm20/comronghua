package com.yanghua.gongxiang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;

import com.yanghua.gongxiang.domain.Grade;

import org.apache.ibatis.annotations.Results;


/**@author sunzhen*/
public interface GradeDao {
    
    @Select("select * from grade ")
    @Results({
        @Result(column="id", property="id"),
        @Result(column="grade_nm", property="gradeNm"),
        @Result(column="teacher_id", property="teacherId")
})
    /**获取Grade数据列表 @return List<Grade> */
    public List<Grade> getByGradeNm();

    @Insert("insert into grade(grade_nm,teacher_id) values(#{gradeNm},#{teacherId})")
    /**设置id自增长 */
    @Options(useGeneratedKeys=true,keyColumn="id",keyProperty="id")
    /**保存数据 @param grade Grade*/
    public void save(Grade grade);
}
