package com.yanghua.gongxiang.bean;

import java.util.Date;

public class UsersParttime {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_users_parttime.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_users_parttime.dept_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer deptId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_users_parttime.user_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer userId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_users_parttime.title
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String title;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_users_parttime.type
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String type;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_users_parttime.created_time
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Date createdTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_users_parttime.order_num
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer orderNum;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_users_parttime.id
     *
     * @return the value of gx_users_parttime.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_users_parttime.id
     *
     * @param id the value for gx_users_parttime.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_users_parttime.dept_id
     *
     * @return the value of gx_users_parttime.dept_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getDeptId() {
        return deptId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_users_parttime.dept_id
     *
     * @param deptId the value for gx_users_parttime.dept_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_users_parttime.user_id
     *
     * @return the value of gx_users_parttime.user_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_users_parttime.user_id
     *
     * @param userId the value for gx_users_parttime.user_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_users_parttime.title
     *
     * @return the value of gx_users_parttime.title
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_users_parttime.title
     *
     * @param title the value for gx_users_parttime.title
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_users_parttime.type
     *
     * @return the value of gx_users_parttime.type
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_users_parttime.type
     *
     * @param type the value for gx_users_parttime.type
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_users_parttime.created_time
     *
     * @return the value of gx_users_parttime.created_time
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Date getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_users_parttime.created_time
     *
     * @param createdTime the value for gx_users_parttime.created_time
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_users_parttime.order_num
     *
     * @return the value of gx_users_parttime.order_num
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getOrderNum() {
        return orderNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_users_parttime.order_num
     *
     * @param orderNum the value for gx_users_parttime.order_num
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }
}