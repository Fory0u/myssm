package com.jj.myssm.vo;

/**
 * Created by admin on 2019/3/24.
 */
public class User {
    private String CId;
    private String CLoginId;
    private String CPassWord;
    private String CName;
    private int NFlag;

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "CId='" + CId + '\'' +
                ", CLoginId='" + CLoginId + '\'' +
                ", CPassWord='" + CPassWord + '\'' +
                ", CName='" + CName + '\'' +
                ", NFlag=" + NFlag +
                '}';
    }

    public String getCId() {
        return CId;
    }

    public void setCId(String CId) {
        this.CId = CId;
    }

    public String getCLoginId() {
        return CLoginId;
    }

    public void setCLoginId(String CLoginId) {
        this.CLoginId = CLoginId;
    }

    public String getCPassWord() {
        return CPassWord;
    }

    public void setCPassWord(String CPassWord) {
        this.CPassWord = CPassWord;
    }

    public String getCName() {
        return CName;
    }

    public void setCName(String CName) {
        this.CName = CName;
    }

    public int getNFlag() {
        return NFlag;
    }

    public void setNFlag(int NFlag) {
        this.NFlag = NFlag;
    }
}
