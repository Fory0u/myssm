package com.jj.myssm.vo;

/**
 * 即时通信表
 * Created by admin on 2019/3/30.
 */
public class Chart {
    private int CId;//主键
    private String CGjc;//关键词
    private String CFhxx;//返回信息

    public int getCId() {
        return CId;
    }

    public void setCId(int CId) {
        this.CId = CId;
    }

    public String getCGjc() {
        return CGjc;
    }

    public void setCGjc(String CGjc) {
        this.CGjc = CGjc;
    }

    public String getCFhxx() {
        return CFhxx;
    }

    public void setCFhxx(String CFhxx) {
        this.CFhxx = CFhxx;
    }
}
