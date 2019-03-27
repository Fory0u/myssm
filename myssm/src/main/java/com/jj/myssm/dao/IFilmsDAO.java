package com.jj.myssm.dao;

import com.jj.myssm.vo.Actors;
import com.jj.myssm.vo.Films;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2018/10/17.
 */
@Component
public interface IFilmsDAO {

     List<Films> findAllFilms(Films film);
     List<Actors> findActorByFilmid(int filmid);
}
