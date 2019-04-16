package com.jj.myssm.vo;

import java.sql.Date;

/**商品留言表
 * Created by admin on 2019/3/30.
 */
public class Message {
    private int CId;//主键
    private String CUserId;//用户id
    private String CUserName;//用户姓名
    private String CSpid;//商品信息id;
    private String CSpmc;//商品名称
    private String CLxnr;//留言内容
    private Date DCjsj;//创建时间

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

    public String getCLxnr() {
        return CLxnr;
    }

    public void setCLxnr(String CLxnr) {
        this.CLxnr = CLxnr;
    }

    public Date getDCjsj() {
        return DCjsj;
    }

    public void setDCjsj(Date DCjsj) {
        this.DCjsj = DCjsj;
    }
}
