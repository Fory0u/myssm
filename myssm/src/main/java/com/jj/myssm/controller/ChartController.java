package com.jj.myssm.controller;

import com.jj.myssm.dao.IChartDAO;
import com.jj.myssm.services.ChartService;
import com.jj.myssm.vo.Chart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Controller
public class ChartController {
    @Autowired
    ChartService chartService;
    @RequestMapping("/listChart.do")
    public String listChart(Integer index , Integer page, ModelMap map ){
        if(index==null || index <=0)
            index = 5;
        if(page==null || page<=0){
            page = 0;
        }else{
            page=page-1;
        }
        int count = chartService.countChart();
        int total = count%index==0?count/index:count/index+1;
        map.put("total",total);
        map.put("count",count);
        map.put("index",index);
        List<Chart> chartList = chartService.getListChart(index,page);
        map.put("chart",chartList);
        return "/jj/ht/chartList.jsp";
    }
    @RequestMapping("/deleteChart.do")
    public String delete(int cid){
        int count=chartService.delete(cid);
        System.out.print(count);
        return "listChart.do";

    }
    @RequestMapping("/addChart.do")
    public String add(Chart chart){
        int count= chartService.add(chart);
        return "listChart.do";
    }
    @RequestMapping("/updateChart.do")
    public String update(Chart chart){
        chartService.update(chart);
        return "listChart.do";
    }
    @RequestMapping("/findByCidChart.do")
    public String findByCid(int cid,ModelMap map){
        Chart chart= chartService.findByCid(cid);
        System.out.print(chart);
        map.put("chart",chart);
        return "/jj/ht/chart-edit.jsp";
    }
}
