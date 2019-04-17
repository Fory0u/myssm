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
 * 即时通信表
 * Created by admin on 2019/3/30.
 */
@Controller
public class ChartController {
    @Autowired
    ChartService chartService;

    @RequestMapping("/listChart.do")
    public String listChart(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = chartService.countChart();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<Chart> chartList = chartService.getListChart(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("chart", chartList);

        return "/jj/ht/chartList.jsp";
    }

    @RequestMapping("/deleteChart.do")
    public String delete(int cid) {
        int count = chartService.delete(cid);
        System.out.print(count);
        return "listChart.do";

    }

    @RequestMapping("/addChart.do")
    public String add(Chart chart) {
        int count = chartService.add(chart);
        return "listChart.do";
    }

    @RequestMapping("/updateChart.do")
    public String update(Chart chart) {
        chartService.update(chart);
        return "listChart.do";
    }

    @RequestMapping("/findByCidChart.do")
    public String findByCid(int cid, ModelMap map) {
        Chart chart = chartService.findByCid(cid);
        System.out.print(chart);
        map.put("chart", chart);
        return "/jj/ht/chart_edit.jsp";
    }

    @RequestMapping("/findMoByChart.do")
    public String findMoByChart(String CGjc, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<Chart> chartList1 = chartService.findMoByChart(CGjc);
        int count = chartList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("chart", chartList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/chartList.jsp";
    }
}
