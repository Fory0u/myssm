package com.jj.myssm.controller;

import com.jj.myssm.dao.IXydtDAO;
import com.jj.myssm.services.XydtService;
import com.jj.myssm.vo.Xydt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * gxd修改成params
 */
@Controller
@RequestMapping("/xydt.do")
public class XydtController {
    @Autowired
    XydtService xydtService;
    @Autowired
    IXydtDAO iXydtDAO;
    @RequestMapping(params = "listXydt")
    public String listXydt(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = xydtService.countXydt();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<Xydt> xydtList = xydtService.getListXydt(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("xydt", xydtList);

        return "/jj/ht/xydtList.jsp";
    }

    @RequestMapping(params = "deleteXydt")
    public String delete(int cid) {
        int count = xydtService.delete(cid);
//        System.out.print(count);
        if (count >= 1) {
            return "redirect:xydt.do?listXydt";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "addXydt")
    public String add(Xydt xydt) {
        int count = xydtService.add(xydt);
        if (count >= 1) {
            return "redirect:xydt.do?listXydt";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "updateXydt")
    public String update(Xydt xydt) {
        int count = xydtService.update(xydt);
        if (count >= 1) {
            return "redirect:xydt.do?listXydt";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "findByCidXydt")
    public String findByCid(int cid, ModelMap map) {
        Xydt xydt = xydtService.findByCid(cid);
//        System.out.print(xydt);
        map.put("xydt", xydt);
        return "/jj/ht/xydt_edit.jsp";
    }

    @RequestMapping(params = "findMoByXydt")
    public String findMoByXydt(String CGjc, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<Xydt> xydtList1 = xydtService.findMoByXydt(CGjc);
        int count = xydtList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("xydt", xydtList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/xydtList.jsp";
    }

    @RequestMapping(params = "getAllXydtToQt")
    public String getAllXydtToQt( ModelMap map) {
        List<Xydt> xydtList = iXydtDAO.getAllXydt();
//        System.out.print(xydt);
        map.put("xydtList", xydtList);
        return "/jj/jjq/dongtai.jsp";
    }



}
