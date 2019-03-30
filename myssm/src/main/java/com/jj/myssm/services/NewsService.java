package com.jj.myssm.services;

import com.jj.myssm.dao.INewsDAO;
import com.jj.myssm.vo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/28.
 */
@Service
public class NewsService {
    @Autowired
    INewsDAO iNewsDAO;

    public News findByCid(int cid){return iNewsDAO.findByCid(cid);}
    public int countNews(){return iNewsDAO.countNews();}
    public int delete(int cid){return iNewsDAO.delete(cid); }
    public int add(News news){return iNewsDAO.add(news);}
    public int update(News news){return iNewsDAO.update(news);}
    public List<News> getListNews(Integer index , Integer page) {
        return iNewsDAO.getListNews(index,page);
    }


}
