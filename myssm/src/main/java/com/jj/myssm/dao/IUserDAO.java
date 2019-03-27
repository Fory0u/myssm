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
    User findByCid(@Param("cid") String cid);
    int countUser();
    int delete(@Param("id") String id);
    int add(User user);
    int update(User user);

    List<User> getListUser(@Param("index")Integer index, @Param("page")Integer page);

}
