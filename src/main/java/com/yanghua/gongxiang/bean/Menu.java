package com.yanghua.gongxiang.bean;

public class Menu {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_menu.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_menu.name
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_menu.mn_image
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String mnImage;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_menu.order_num
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer orderNum;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_menu.parent_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Integer parentId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_menu.status
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private Byte status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column gx_menu.mn_dynamic
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    private String mnDynamic;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_menu.id
     *
     * @return the value of gx_menu.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_menu.id
     *
     * @param id the value for gx_menu.id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_menu.name
     *
     * @return the value of gx_menu.name
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_menu.name
     *
     * @param name the value for gx_menu.name
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_menu.mn_image
     *
     * @return the value of gx_menu.mn_image
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getMnImage() {
        return mnImage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_menu.mn_image
     *
     * @param mnImage the value for gx_menu.mn_image
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setMnImage(String mnImage) {
        this.mnImage = mnImage == null ? null : mnImage.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_menu.order_num
     *
     * @return the value of gx_menu.order_num
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getOrderNum() {
        return orderNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_menu.order_num
     *
     * @param orderNum the value for gx_menu.order_num
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_menu.parent_id
     *
     * @return the value of gx_menu.parent_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_menu.parent_id
     *
     * @param parentId the value for gx_menu.parent_id
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_menu.status
     *
     * @return the value of gx_menu.status
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_menu.status
     *
     * @param status the value for gx_menu.status
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column gx_menu.mn_dynamic
     *
     * @return the value of gx_menu.mn_dynamic
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public String getMnDynamic() {
        return mnDynamic;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column gx_menu.mn_dynamic
     *
     * @param mnDynamic the value for gx_menu.mn_dynamic
     *
     * @mbg.generated Fri Jan 26 16:50:52 CST 2018
     */
    public void setMnDynamic(String mnDynamic) {
        this.mnDynamic = mnDynamic == null ? null : mnDynamic.trim();
    }
}