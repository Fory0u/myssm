package com.jj.myssm.services;

import com.jj.myssm.dao.IShopDAO;
import com.jj.myssm.vo.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Service
public class ShopService {
    @Autowired
    IShopDAO iShopDAO;

    public Shop findByCid(int cid) {
        return iShopDAO.findByCid(cid);
    }

    public int countShop() {
        return iShopDAO.countShop();
    }

    public int delete(int cid) {
        return iShopDAO.delete(cid);
    }

    public int add(Shop shop) {
        return iShopDAO.add(shop);
    }

    public int update(Shop shop) {
        return iShopDAO.update(shop);
    }

    public List<Shop> getListShop(Integer start, Integer size) {
        return iShopDAO.getListShop(start, size);
    }

    public List<Shop> findMoByShop(String CGjc) {
        return iShopDAO.findMoByShop(CGjc);
    }
}
