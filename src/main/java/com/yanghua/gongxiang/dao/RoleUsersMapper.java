package com.yanghua.gongxiang.dao;

import com.yanghua.gongxiang.bean.RoleUsers;
import com.yanghua.gongxiang.bean.RoleUsersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RoleUsersMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    long countByExample(RoleUsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int deleteByExample(RoleUsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int insert(RoleUsers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int insertSelective(RoleUsers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    List<RoleUsers> selectByExample(RoleUsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    RoleUsers selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByExampleSelective(@Param("record") RoleUsers record, @Param("example") RoleUsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByExample(@Param("record") RoleUsers record, @Param("example") RoleUsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByPrimaryKeySelective(RoleUsers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gx_role_users
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    int updateByPrimaryKey(RoleUsers record);
}