package com.yanghua.gongxiang.bean;

import java.util.Date;

public class GradeAction {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.id
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.action_name
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private String actionName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.action_val
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private Short actionVal;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.action_desc
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private String actionDesc;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.order_num
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private Short orderNum;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.created_id
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private Integer createdId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.created_time
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private Date createdTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_grade_actions.status
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    private Byte status;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.id
     *
     * @return the value of gx_grade_actions.id
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.id
     *
     * @param id the value for gx_grade_actions.id
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.action_name
     *
     * @return the value of gx_grade_actions.action_name
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public String getActionName() {
        return actionName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.action_name
     *
     * @param actionName the value for gx_grade_actions.action_name
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setActionName(String actionName) {
        this.actionName = actionName == null ? null : actionName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.action_val
     *
     * @return the value of gx_grade_actions.action_val
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public Short getActionVal() {
        return actionVal;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.action_val
     *
     * @param actionVal the value for gx_grade_actions.action_val
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setActionVal(Short actionVal) {
        this.actionVal = actionVal;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.action_desc
     *
     * @return the value of gx_grade_actions.action_desc
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public String getActionDesc() {
        return actionDesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.action_desc
     *
     * @param actionDesc the value for gx_grade_actions.action_desc
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setActionDesc(String actionDesc) {
        this.actionDesc = actionDesc == null ? null : actionDesc.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.order_num
     *
     * @return the value of gx_grade_actions.order_num
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public Short getOrderNum() {
        return orderNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.order_num
     *
     * @param orderNum the value for gx_grade_actions.order_num
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setOrderNum(Short orderNum) {
        this.orderNum = orderNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.created_id
     *
     * @return the value of gx_grade_actions.created_id
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public Integer getCreatedId() {
        return createdId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.created_id
     *
     * @param createdId the value for gx_grade_actions.created_id
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setCreatedId(Integer createdId) {
        this.createdId = createdId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.created_time
     *
     * @return the value of gx_grade_actions.created_time
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public Date getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.created_time
     *
     * @param createdTime the value for gx_grade_actions.created_time
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_grade_actions.status
     *
     * @return the value of gx_grade_actions.status
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_grade_actions.status
     *
     * @param status the value for gx_grade_actions.status
     *
     * @mbg.generated Wed Jan 31 20:33:26 CST 2018
     */
    public void setStatus(Byte status) {
        this.status = status;
    }
}