package com.jj.myssm.services;

import com.jj.myssm.dao.IUserDAO;
import com.jj.myssm.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.util.List;

/**
 * Created by admin on 2019/3/24.
 */
@Service
public class UserService {
    @Autowired
    IUserDAO iUserDAO;

    public User login(String loginid, String password) {
        return iUserDAO.login(loginid, password);
    }

    public int delete(int id) {
        return iUserDAO.delete(id);
    }

    public int add(User user) {
        return iUserDAO.add(user);
    }

    public int update(User user) {
        return iUserDAO.update(user);
    }

    public User findByCid(int cid) {
        return iUserDAO.findByCid(cid);
    }

    public List<User> getListUser(Integer start, Integer size) {
        return iUserDAO.getListUser(start, size);
    }

    public int countUser() {
        return iUserDAO.countUser();
    }

    public List<User> findMoByUser(String CLoginId) {
        return iUserDAO.findMoByUser(CLoginId);
    }
}
