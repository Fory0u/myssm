package com.jj.myssm.controller;

import com.jj.myssm.services.FilmService;
import com.jj.myssm.vo.Films;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2018/10/17.
 */
@Controller
public class InitCtrl {
    @Autowired
    private FilmService filmService;

    @RequestMapping("/init.do")
    public String init(HttpServletRequest request, ModelMap map){
//        System.out.println(1);
        Films films= new  Films();
        films.setFilmname("123");
        request.setAttribute("films",films);
//        request.setAttribute("all",filmService.findAllFilms(film));
        request.getSession().setAttribute("films",films);
//        map.put("films",films);
        map.addAttribute("a",1);
//    return "jj/jjq/shouye";
//        return "index.jsp";
        return "jj/jjq/shouye.jsp";

    }
//    @RequestMapping("/login.do")
//    public String login(HttpServletRequest request){
////        System.out.println(1);
//        Films films= new  Films();
//        films.setFilmname("123");
//        request.getSession().setAttribute("films",films);
////        request.setAttribute("films",films);
////        request.setAttribute("all",filmService.findAllFilms(film));
////    return "jj/jjq/shouye";
////        return "index.jsp";
//        return "jj/jjq/test.jsp";
//
//    }
}
