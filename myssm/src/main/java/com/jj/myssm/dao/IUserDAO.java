package com.jj.myssm.dao;

import com.jj.myssm.vo.Actors;
import com.jj.myssm.vo.Films;
import com.jj.myssm.vo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2018/10/17.
 */
@Component
public interface IUserDAO {

     User login(@Param("loginid") String loginid, @Param("password") String password);
    User findByCid(@Param("cid") int cid);
    int countUser();
    int delete(@Param("id") int id);
    int add(User user);
    int update(User user);

    List<User> getListUser(@Param("start")Integer start, @Param("size")Integer size);
    List<User> findMoByUser(@Param("CLoginId") String CLoginId);//模糊查询

}
