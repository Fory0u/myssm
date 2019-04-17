package com.jj.myssm.services;

import com.jj.myssm.dao.ISplxDAO;
import com.jj.myssm.vo.Splx;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Service
public class SplxService {
    @Autowired
    ISplxDAO iSplxDAO;

    public Splx findByCid(int cid) {
        return iSplxDAO.findByCid(cid);
    }

    public int countSplx() {
        return iSplxDAO.countSplx();
    }

    public int delete(int cid) {
        return iSplxDAO.delete(cid);
    }

    public int add(Splx splx) {
        return iSplxDAO.add(splx);
    }

    public int update(Splx splx) {
        return iSplxDAO.update(splx);
    }

    public List<Splx> getListSplx(Integer start, Integer size) {
        return iSplxDAO.getListSplx(start, size);
    }

    public List<Splx> findMoBySplx(String CGjc) {
        return iSplxDAO.findMoBySplx(CGjc);
    }
}
