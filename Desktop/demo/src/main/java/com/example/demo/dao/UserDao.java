package com.example.demo.dao;

import com.example.demo.vo.UserVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserDao {


    @Select("select * from user")
    List<UserVo> findUser();

}
