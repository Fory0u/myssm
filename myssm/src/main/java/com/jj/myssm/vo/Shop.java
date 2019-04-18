package com.jj.myssm.vo;

import java.sql.Date;

public class Shop {
    private int CId;//商品编码
    private String CUserId;//商品所有人id
    private String CUserName;//商品所有人姓名
    private String CPhoto;//商品图片路径
    private String CSpmc;//商品名称
    private String CSpms;//商品描述
    private float FSpjb;//商品价格
    private int NSpsl;//商品数量
    private String CType;//商品类型
    private Date DCjsj;//创建时间
    private Date DGxsj;//更新时间
    private String CCzr;//操作人


    public Shop() {
    }

    public void setCId(int CId) {
        this.CId = CId;
    }

    public void setCUserId(String CUserId) {
        this.CUserId = CUserId;
    }

    public void setCUserName(String CUserName) {
        this.CUserName = CUserName;
    }

    public void setCSpmc(String CSpmc) {
        this.CSpmc = CSpmc;
    }

    public void setCSpms(String CSpms) {
        this.CSpms = CSpms;
    }

    public void setFSpjb(float FSpjb) {
        this.FSpjb = FSpjb;
    }

    public void setNSpsl(int NSpsl) {
        this.NSpsl = NSpsl;
    }

    public void setCType(String CType) {
        this.CType = CType;
    }

    public void setDCjsj(Date DCjsj) {
        this.DCjsj = DCjsj;
    }

    public void setDGxsj(Date DGxsj) {
        this.DGxsj = DGxsj;
    }

    public void setCCzr(String CCzr) {
        this.CCzr = CCzr;
    }

    public int getCId() {
        return CId;
    }

    public String getCUserId() {
        return CUserId;
    }

    public String getCUserName() {
        return CUserName;
    }

    public String getCSpmc() {
        return CSpmc;
    }

    public String getCSpms() {
        return CSpms;
    }

    public float getFSpjb() {
        return FSpjb;
    }

    public int getNSpsl() {
        return NSpsl;
    }

    public String getCType() {
        return CType;
    }

    public Date getDCjsj() {
        return DCjsj;
    }

    public Date getDGxsj() {
        return DGxsj;
    }

    public String getCCzr() {
        return CCzr;
    }

    public String getCPhoto() {
        return CPhoto;
    }

    public void setCPhoto(String CPhoto) {
        this.CPhoto = CPhoto;
    }
}
