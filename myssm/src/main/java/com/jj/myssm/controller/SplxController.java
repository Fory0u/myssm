package com.jj.myssm.controller;

import com.jj.myssm.dao.ISplxDAO;
import com.jj.myssm.services.SplxService;
import com.jj.myssm.vo.Splx;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * gxd修改成params
 */
@Controller
@RequestMapping("/splx.do")
public class SplxController {
    @Autowired
    SplxService splxService;
    @Autowired
    ISplxDAO iSplxDAO;

    @RequestMapping(params = "listSplx")
    public String listSplx(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = splxService.countSplx();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<Splx> splxList = splxService.getListSplx(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("splx", splxList);

        return "/jj/ht/splxList.jsp";
    }

    @ResponseBody
    @RequestMapping(params = "getAllSplx")
    public Object getAllSplx( ModelMap map) {
        List<Map<String,Object>> splxList = iSplxDAO.getAllSplx();
        return splxList;
    }

    @RequestMapping(params = "deleteSplx")
    public String delete(int cid) {
        int count = splxService.delete(cid);
//        System.out.print(count);
        if (count >= 1) {
            return "splx.do?listSplx";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "addSplx")
    public String add(Splx splx) {
        int count = splxService.add(splx);
        if (count >= 1) {
            return "splx.do?listSplx";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "updateSplx")
    public String update(Splx splx) {
        int count = splxService.update(splx);
        if (count >= 1) {
            return "splx.do?listSplx";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "findByCidSplx")
    public String findByCid(int cid, ModelMap map) {
        Splx splx = splxService.findByCid(cid);
//        System.out.print(splx);
        map.put("splx", splx);
        return "/jj/ht/splx_edit.jsp";
    }

    @RequestMapping(params = "findMoBySplx")
    public String findMoBySplx(String CGjc, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<Splx> splxList1 = splxService.findMoBySplx(CGjc);
        int count = splxList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("splx", splxList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/splxList.jsp";
    }
}
