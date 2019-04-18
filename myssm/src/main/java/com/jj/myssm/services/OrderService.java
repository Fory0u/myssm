package com.jj.myssm.services;

import com.jj.myssm.dao.IOrderDAO;
import com.jj.myssm.vo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Service
public class OrderService {
    @Autowired
    IOrderDAO iOrderDAO;

    public Order findByCid(int cid) {
        return iOrderDAO.findByCid(cid);
    }

    public int countOrder() {
        return iOrderDAO.countOrder();
    }

    public int delete(int cid) {
        return iOrderDAO.delete(cid);
    }

    public int add(Order order) {
        return iOrderDAO.add(order);
    }

    public int update(Order order) {
        return iOrderDAO.update(order);
    }

    public List<Order> getListOrder(Integer start, Integer size) {
        return iOrderDAO.getListOrder(start, size);
    }

    public List<Order> findMoByOrder(String CGjc) {
        return iOrderDAO.findMoByOrder(CGjc);
    }
}
