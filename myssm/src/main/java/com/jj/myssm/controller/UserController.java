package com.jj.myssm.controller;

import com.jj.myssm.services.UserService;
import com.jj.myssm.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by admin on 2019/3/24.
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("login.do")
    public String login(String loginid, String password, ModelMap map, HttpSession session) {
        User user = userService.login(loginid, password);
        if (user != null) {
            map.put("user", user);
            session.setAttribute("user", user);
            if (user.getNFlag() == 1) {//用户
                return "/jj/jjq/index.jsp";
            } else {//管理员
                return "/jj/ht/adminIndex.jsp";
            }
        } else {//登陆失败
            return "/jj/jjq/login.jsp";
        }
    }

    @RequestMapping("/listUser.do")
    public String listUser(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = userService.countUser();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<User> userList = userService.getListUser(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("users", userList);

        return "/jj/ht/usersList.jsp";
    }

    @RequestMapping("/delete.do")
    public String delete(int id) {
        int count = userService.delete(id);
        System.out.print(count);
        return "listUser.do";

    }

    @RequestMapping("/add.do")
    public String add(User user) {
        int count = userService.add(user);
        return "listUser.do";
    }

    @RequestMapping("/update.do")
    public String update(User user) {
        userService.update(user);
        return "listUser.do";
    }

    @RequestMapping("/findByCid.do")
    public String findByCid(int cid, ModelMap map) {
        User user = userService.findByCid(cid);
        System.out.print(user);
        map.put("user", user);
        return "/jj/ht/user-edit.jsp";
    }

    @RequestMapping("/goLogin.do")
    public String goLogin(ModelMap map) {
        map.remove("user");
        return "/jj/jjq/login.jsp";
    }

    @RequestMapping("/findMoByUser.do")
    public String findMoByUser(String CLoginId, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<User> userList1 = userService.findMoByUser(CLoginId);
        int count = userList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("users", userList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/usersList.jsp";
    }


}
