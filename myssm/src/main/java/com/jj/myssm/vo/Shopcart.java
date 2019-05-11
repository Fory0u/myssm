package com.jj.myssm.vo;

import java.sql.Date;

public class Shopcart {
    private int CId;
    private String CUserId;//用户id
    private String CUserName;//用户名
    private String CSpid;//商品id
    private String CSpmc;//商品名称
    private String CSpdj;//商品单价
    private String CSpsl;//商品数量
    private int NZs;//总数
    private float FZj;//总价
    private Date DCjsj;//创建时间
    private Date DGxsj;//更新时间

    public int getCId() {
        return CId;
    }

    public void setCId(int CId) {
        this.CId = CId;
    }

    public String getCUserId() {
        return CUserId;
    }

    public void setCUserId(String CUserId) {
        this.CUserId = CUserId;
    }

    public String getCUserName() {
        return CUserName;
    }

    public void  setCUserName(String CUserName) {
        this.CUserName = CUserName;
    }

    public String getCSpid() {
        return CSpid;
    }

    public void setCSpid(String CSpid) {
        this.CSpid = CSpid;
    }

    public String getCSpmc() {
        return CSpmc;
    }

    public void setCSpmc(String CSpmc) {
        this.CSpmc = CSpmc;
    }

    public String getCSpdj() {
        return CSpdj;
    }

    public void setCSpdj(String CSpdj) {
        this.CSpdj = CSpdj;
    }

    public String getCSpsl() {
        return CSpsl;
    }

    public void setCSpsl(String CSpsl) {
        this.CSpsl = CSpsl;
    }

    public int getNZs() {
        return NZs;
    }

    public void setNZs(int NZs) {
        this.NZs = NZs;
    }

    public float getFZj() {
        return FZj;
    }

    public void setFZj(float FZj) {
        this.FZj = FZj;
    }

    public Date getDCjsj() {
        return DCjsj;
    }

    public void setDCjsj(Date DCjsj) {
        this.DCjsj = DCjsj;
    }

    public Date getDGxsj() {
        return DGxsj;
    }

    public void setDGxsj(Date DGxsj) {
        this.DGxsj = DGxsj;
    }

    public Shopcart() {
    }
}
