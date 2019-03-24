package com.jj.myssm.controller;

import com.jj.myssm.services.UserService;
import com.jj.myssm.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by admin on 2019/3/24.
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("login.do")
    public String login(String loginid, String password, ModelMap map){
        User user = userService.login(loginid,password);
        if(user != null ){
            map.put("user",user);
            if(user.getNFlag() == 1 ){//用户
                return "/jj/jjq/index.jsp";
            }else{//管理员
                return "/jj/ht/adminIndex.jsp";
            }
        }else{//登陆失败
            return "/jj/jjq/login.jsp";
        }
    }
    @RequestMapping("/listUser.do")
    public String listUser(Integer index , Integer page, ModelMap map ){
        if(index==null || index <=0)
            index = 5;
        if(page==null || page<=0){
            page = 0;
        }else{
            page=page-1;
        }
        int count = userService.countUser();
        int total = count%index==0?count/index:count/index+1;
        map.put("total",total);
        map.put("count",count);
        map.put("index",index);
        List<User> userList = userService.getListUser(index,page);
        map.put("users",userList);
        return "/jj/ht/usersList.jsp";
    }

    @RequestMapping("/goLogin.do")
    public String goLogin(ModelMap map){
        map.remove("user");
        return "/jj/jjq/login.jsp";
    }

}
