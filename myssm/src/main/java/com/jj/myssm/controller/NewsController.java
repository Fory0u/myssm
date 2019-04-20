package com.jj.myssm.controller;

import com.jj.myssm.services.NewsService;
import com.jj.myssm.vo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

/**
 * Created by admin on 2019/3/28.
 */
@Controller

public class NewsController {
    @Autowired
    NewsService newsService;

    @RequestMapping("/listNews.do")
    public String listNews(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = newsService.countNews();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<News> newsList = newsService.getListNews(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("news", newsList);

        return "/jj/ht/newsList.jsp";
    }

    @RequestMapping("/deleteNews.do")
    public String delete(int cid) {
        int count = newsService.delete(cid);
        System.out.print(count);
        return "listNews.do";

    }

    @RequestMapping("/addNews.do")
    public String add(News news) {
        int count = newsService.add(news);
        return "listNews.do";
    }

    @RequestMapping("/updateNews.do")
    public String update(News news) {
        news.setDGxsj(new java.sql.Date(System.currentTimeMillis()));
        newsService.update(news);
        return "redirect:listNews.do";
    }

    @RequestMapping("/findByCidNews.do")
    public String findByCid(int cid, ModelMap map) {
        News news = newsService.findByCid(cid);
        System.out.print(news);
        map.put("news", news);
        return "/jj/ht/news_edit.jsp";
    }

    @RequestMapping("/findMoByNews.do")
    public String findMoByNews(String CBt, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<News> newsList1 = newsService.findMoNewsByBt(CBt);
        int count = newsList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("news", newsList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/newsList.jsp";
    }
}
