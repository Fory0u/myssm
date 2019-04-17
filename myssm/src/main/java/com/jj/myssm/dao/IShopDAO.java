package com.jj.myssm.dao;

import com.jj.myssm.vo.Shop;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Component
public interface IShopDAO {
    Shop findByCid(@Param("cid") int cid);

    int countShop();

    int delete(@Param("cid") int cid);

    int add(Shop shop);

    int update(Shop shop);

    List<Shop> getListShop(@Param("start") Integer start, @Param("size") Integer size);

    List<Shop> findMoByShop(@Param("CGjc") String CGjc);
}
