package com.jj.myssm.dao;


import com.jj.myssm.vo.Message;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Component
public interface IMessageDAO {
    Message findByCid(@Param("cid") int cid);

    int countMessage();

    int delete(@Param("cid") int cid);

    int add(Message message);

    int update(Message message);

    List<Message> getListMessage(@Param("start") Integer start, @Param("size") Integer size);

    List<Message> findMoByMessage(@Param("CSpmc") String CSpmc);
}
