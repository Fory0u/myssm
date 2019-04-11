package com.jj.myssm.vo;

import java.sql.Date;

/**公告表
 * Created by admin on 2019/3/28.
 */
public class News {
    private  int CId;//主键
    private String CBt;//标题
    private String CFbt;//副标题
    private String CNr;//内容
    private String CType;//类型
    private int NType;//类型
    private Date DCjsj;//创建时间
    private Date DGxsj;//跟新时间


    public int getCId() {
        return CId;
    }

    public void setCId(int CId) {
        this.CId = CId;
    }

    public String getCBt() {
        return CBt;
    }

    public void setCBt(String CBt) {
        this.CBt = CBt;
    }

    public String getCFbt() {
        return CFbt;
    }

    public void setCFbt(String CFbt) {
        this.CFbt = CFbt;
    }

    public String getCNr() {
        return CNr;
    }

    public void setCNr(String CNr) {
        this.CNr = CNr;
    }

    public String getCType() {
        return CType;
    }

    public void setCType(String CType) {
        this.CType = CType;
    }

    public int getNType() {
        return NType;
    }

    public void setNType(int NType) {
        this.NType = NType;
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
}
