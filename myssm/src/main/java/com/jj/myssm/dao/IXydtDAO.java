package com.jj.myssm.dao;

import com.jj.myssm.vo.Xydt;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Component
public interface IXydtDAO {
    Xydt findByCid(@Param("cid") int cid);

    int countXydt();

    int delete(@Param("cid") int cid);

    int add(Xydt xydt);

    int update(Xydt xydt);

    List<Xydt> getListXydt(@Param("start") Integer start, @Param("size") Integer size);

    List<Xydt> findMoByXydt(@Param("CGjc") String CGjc);

    List<Xydt> getAllXydt();

}
