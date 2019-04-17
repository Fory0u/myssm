package com.jj.myssm.vo;

/***
 * 商品类型表
 */
public class Splx {
    private int CId;//主键
    private String CIxmc;//类型名称

    public Splx() {
    }

    public int getCId() {
        return CId;
    }

    public void setCId(int CId) {
        this.CId = CId;
    }

    public String getCIxmc() {
        return CIxmc;
    }

    public void setCIxmc(String CIxmc) {
        this.CIxmc = CIxmc;
    }
}
