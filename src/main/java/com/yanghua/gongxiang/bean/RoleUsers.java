package com.yanghua.gongxiang.bean;

public class RoleUsers {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_role_users.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_role_users.user_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer userId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_role_users.type
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String type;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_role_users.depts
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String depts;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_role_users.funcs
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String funcs;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_role_users.id
     *
     * @return the value of gx_role_users.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_role_users.id
     *
     * @param id the value for gx_role_users.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_role_users.user_id
     *
     * @return the value of gx_role_users.user_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_role_users.user_id
     *
     * @param userId the value for gx_role_users.user_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_role_users.type
     *
     * @return the value of gx_role_users.type
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_role_users.type
     *
     * @param type the value for gx_role_users.type
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_role_users.depts
     *
     * @return the value of gx_role_users.depts
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getDepts() {
        return depts;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_role_users.depts
     *
     * @param depts the value for gx_role_users.depts
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setDepts(String depts) {
        this.depts = depts == null ? null : depts.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_role_users.funcs
     *
     * @return the value of gx_role_users.funcs
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getFuncs() {
        return funcs;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_role_users.funcs
     *
     * @param funcs the value for gx_role_users.funcs
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setFuncs(String funcs) {
        this.funcs = funcs == null ? null : funcs.trim();
    }
}