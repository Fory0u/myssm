package com.jj.myssm.dao;

import com.jj.myssm.vo.Splx;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2019/3/30.
 */
@Component
public interface ISplxDAO {
    Splx findByCid(@Param("cid") int cid);

    int countSplx();

    int delete(@Param("cid") int cid);

    int add(Splx splx);

    int update(Splx splx);

    List<Splx> getListSplx(@Param("start") Integer start, @Param("size") Integer size);

    List<Splx> findMoBySplx(@Param("CGjc") String CGjc);

    List<Map<String,Object>> getAllSplx();
}
