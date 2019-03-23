package com.jj.myssm.vo;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/10/17.
 */
public class Films {
    private int filmid;
    private String filmname;
    private Date showtime;
    private int ticknum;
    private List<Actors> acts = new ArrayList<Actors>();

    public int getFilmid() {
        return filmid;
    }

    public void setFilmid(int filmid) {
        this.filmid = filmid;
    }

    public String getFilmname() {
        return filmname;
    }

    public void setFilmname(String filmname) {
        this.filmname = filmname;
    }

    public Date getShowtime() {
        return showtime;
    }

    public void setShowtime(Date showtime) {
        this.showtime = showtime;
    }

    public int getTicknum() {
        return ticknum;
    }

    public void setTicknum(int ticknum) {
        this.ticknum = ticknum;
    }

    public List<Actors> getActs() {
        return acts;
    }

    public void setActs(List<Actors> acts) {
        this.acts = acts;
    }
}
