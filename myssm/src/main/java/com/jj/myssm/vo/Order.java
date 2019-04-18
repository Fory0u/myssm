package com.jj.myssm.vo;

import java.sql.Date;

public class Order {
    private int CId;
    private String CUserId;
    private String CUserName;
    private String CSpid;
    private String CSpmc;
    private String CSpdj;
    private String CSpsl;
    private int NZs;
    private float FZj;
    private String CDdzt;
    private Date DCjsj;
    private Date DGxsj;

    public String getCDdzt() {
        return CDdzt;
    }

    public void setCDdzt(String CDdzt) {
        this.CDdzt = CDdzt;
    }
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

    public void setCUserName(String CUserName) {
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

    public Order() {
    }
}
