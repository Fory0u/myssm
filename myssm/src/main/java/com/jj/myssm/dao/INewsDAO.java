package com.jj.myssm.dao;

import com.jj.myssm.vo.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by admin on 2019/3/28.
 */
@Component
public interface INewsDAO {
    News findByCid(@Param("cid") int cid);
    int countNews();
    int delete(@Param("cid") int cid);
    int add(News news);
    int update(News news);
    List<News> getListNews(@Param("index")Integer index, @Param("page")Integer page);
}
