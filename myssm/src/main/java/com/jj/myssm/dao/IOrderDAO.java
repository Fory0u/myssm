package com.jj.myssm.dao;

import com.jj.myssm.vo.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Component
public interface IOrderDAO {
    Order findByCid(@Param("cid") int cid);

    int countOrder();

    int delete(@Param("cid") int cid);

    int add(Order order);

    int update(Order order);

    List<Order> getListOrder(@Param("start") Integer start, @Param("size") Integer size);

    List<Order> findMoByOrder(@Param("CGjc") String CGjc);
}
