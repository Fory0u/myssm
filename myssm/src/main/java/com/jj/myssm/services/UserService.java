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

    public User login(String loginid ,String password){
       return iUserDAO.login(loginid,password);
    }

    public List<User> getListUser(Integer index , Integer page) {
        return iUserDAO.getListUser(index,page);
    }

    public int countUser() {
        return iUserDAO.countUser();
    }
}
