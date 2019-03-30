package com.jj.myssm.dao;

import com.jj.myssm.vo.Chart;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Component
public interface IChartDAO {
    Chart findByCid(@Param("cid") int cid);
    int countChart();
    int delete(@Param("cid") int cid);
    int add(Chart chart);
    int update(Chart chart);
    List<Chart> getListChart(@Param("index")Integer index, @Param("page")Integer page);
}
