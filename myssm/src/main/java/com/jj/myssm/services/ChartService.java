package com.jj.myssm.services;

import com.jj.myssm.dao.IChartDAO;
import com.jj.myssm.vo.Chart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Service
public class ChartService {
    @Autowired
    IChartDAO iChartDAO;
    public Chart findByCid(int cid){return iChartDAO.findByCid(cid);}
    public int countChart(){return iChartDAO.countChart();}
    public int delete(int cid){return iChartDAO.delete(cid); }
    public int add(Chart chart){return iChartDAO.add(chart);}
    public int update(Chart chart){return iChartDAO.update(chart);}
    public List<Chart> getListChart(Integer index , Integer page) {return iChartDAO.getListChart(index,page);}
}
