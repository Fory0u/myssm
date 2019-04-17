package com.jj.myssm.services;

import com.jj.myssm.dao.IShopcartDAO;
import com.jj.myssm.vo.Shopcart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Service
public class ShopcartService {
    @Autowired
    IShopcartDAO iShopcartDAO;

    public Shopcart findByCid(int cid) {
        return iShopcartDAO.findByCid(cid);
    }

    public int countShopcart() {
        return iShopcartDAO.countShopcart();
    }

    public int delete(int cid) {
        return iShopcartDAO.delete(cid);
    }

    public int add(Shopcart shopcart) {
        return iShopcartDAO.add(shopcart);
    }

    public int update(Shopcart shopcart) {
        return iShopcartDAO.update(shopcart);
    }

    public List<Shopcart> getListShopcart(Integer start, Integer size) {
        return iShopcartDAO.getListShopcart(start, size);
    }

    public List<Shopcart> findMoByShopcart(String CGjc) {
        return iShopcartDAO.findMoByShopcart(CGjc);
    }
}
