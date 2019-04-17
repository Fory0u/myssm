package com.jj.myssm.services;

import com.jj.myssm.dao.IXydtDAO;
import com.jj.myssm.vo.Xydt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Service
public class XydtService {
    @Autowired
    IXydtDAO iXydtDAO;

    public Xydt findByCid(int cid) {
        return iXydtDAO.findByCid(cid);
    }

    public int countXydt() {
        return iXydtDAO.countXydt();
    }

    public int delete(int cid) {
        return iXydtDAO.delete(cid);
    }

    public int add(Xydt xydt) {
        return iXydtDAO.add(xydt);
    }

    public int update(Xydt xydt) {
        return iXydtDAO.update(xydt);
    }

    public List<Xydt> getListXydt(Integer start, Integer size) {
        return iXydtDAO.getListXydt(start, size);
    }

    public List<Xydt> findMoByXydt(String CGjc) {
        return iXydtDAO.findMoByXydt(CGjc);
    }
}
