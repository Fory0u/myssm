package com.jj.myssm.dao;

import com.jj.myssm.vo.Shopcart;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Component
public interface IShopcartDAO {
    Shopcart findByCid(@Param("cid") int cid);

    int countShopcart();

    int delete(@Param("cid") int cid);

    int add(Shopcart shopcart);

    int update(Shopcart shopcart);

    List<Shopcart> getListShopcart(@Param("start") Integer start, @Param("size") Integer size);

    List<Shopcart> findMoByShopcart(@Param("CGjc") String CGjc);
}
