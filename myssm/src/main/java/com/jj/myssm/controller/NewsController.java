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
    public String listNews(Integer index , Integer page, ModelMap map ){
        if(index==null || index <=0)
            index = 5;
        if(page==null || page<=0){
            page = 0;
        }else{
            page=page-1;
        }
        int count = newsService.countNews();
        int total = count%index==0?count/index:count/index+1;
        map.put("total",total);
        map.put("count",count);
        map.put("index",index);
        List<News> newsList = newsService.getListNews(index,page);
        map.put("news",newsList);
        return "/jj/ht/newsList.jsp";
    }
    @RequestMapping("/deleteNews.do")
    public String delete(int cid){
        int count=newsService.delete(cid);
        System.out.print(count);
        return "listNews.do";

    }
    @RequestMapping("/addNews.do")
    public String add(News news){
        int count= newsService.add(news);
        return "listNews.do";
    }
    @RequestMapping("/updateNews.do")
    public String update(News news){
        newsService.update(news);
        return "listNews.do";
    }
    @RequestMapping("/findByCidNews.do")
    public String findByCid(int cid,ModelMap map){
        News news= newsService.findByCid(cid);
        System.out.print(news);
        map.put("news",news);
        return "/jj/ht/news-edit.jsp";
    }
}
