package com.yanghua.gongxiang.dao;

import com.yanghua.gongxiang.bean.UsersParttime;
import com.yanghua.gongxiang.bean.UsersParttimeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UsersParttimeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    long countByExample(UsersParttimeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int deleteByExample(UsersParttimeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int insert(UsersParttime record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int insertSelective(UsersParttime record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    List<UsersParttime> selectByExample(UsersParttimeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    UsersParttime selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByExampleSelective(@Param("record") UsersParttime record, @Param("example") UsersParttimeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByExample(@Param("record") UsersParttime record, @Param("example") UsersParttimeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByPrimaryKeySelective(UsersParttime record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_users_parttime
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByPrimaryKey(UsersParttime record);
}