package com.jj.myssm.controller;

import com.jj.myssm.services.ShopcartService;
import com.jj.myssm.vo.Shopcart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * gxd修改成params
 */
@Controller
@RequestMapping("/shopcart.do")
public class ShopcartController {
    @Autowired
    ShopcartService shopcartService;

    @RequestMapping(params = "listShopcart")
    public String listShopcart(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = shopcartService.countShopcart();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<Shopcart> shopcartList = shopcartService.getListShopcart(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("shopcart", shopcartList);

        return "/jj/ht/shopcartList.jsp";
    }

    @RequestMapping(params = "deleteShopcart")
    public String delete(int cid) {
        int count = shopcartService.delete(cid);
//        System.out.print(count);
        if (count >= 1) {
            return "shopcart.do?listShopcart";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "addShopcart")
    public String add(Shopcart shopcart) {
        int count = shopcartService.add(shopcart);
        if (count >= 1) {
            return "shopcart.do?listShopcart";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "updateShopcart")
    public String update(Shopcart shopcart) {
        int count = shopcartService.update(shopcart);
        if (count >= 1) {
            return "shopcart.do?listShopcart";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "findByCidShopcart")
    public String findByCid(int cid, ModelMap map) {
        Shopcart shopcart = shopcartService.findByCid(cid);
//        System.out.print(shopcart);
        map.put("shopcart", shopcart);
        return "/jj/ht/shopcart_edit.jsp";
    }

    @RequestMapping(params = "findMoByShopcart")
    public String findMoByShopcart(String CGjc, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<Shopcart> shopcartList1 = shopcartService.findMoByShopcart(CGjc);
        int count = shopcartList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("shopcart", shopcartList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/shopcartList.jsp";
    }
}
