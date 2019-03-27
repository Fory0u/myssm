package com.jj.myssm.services;

import com.jj.myssm.dao.IFilmsDAO;
import com.jj.myssm.vo.Films;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/10/17.
 */
@Service
public class FilmService {
    @Autowired
    private IFilmsDAO iFilmsDAO;

    public List<Films> findAllFilms(Films film){
        return iFilmsDAO.findAllFilms(film);
    }
}
