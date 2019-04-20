package com.jj.myssm.controller;

import com.jj.myssm.services.OrderService;
import com.jj.myssm.vo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * gxd修改成params
 */
@Controller
@RequestMapping("/order.do")
public class OrderController {
    @Autowired
    OrderService orderService;

    @RequestMapping(params = "listOrder")
    public String listOrder(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = orderService.countOrder();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<Order> orderList = orderService.getListOrder(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("order", orderList);

        return "/jj/ht/orderList.jsp";
    }

    @RequestMapping(params = "deleteOrder")
    public String delete(int cid) {
        int count = orderService.delete(cid);
//        System.out.print(count);
        if (count >= 1) {
            return "redirect:order.do?listOrder";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "addOrder")
    public String add(Order order) {
        int count = orderService.add(order);
        if (count >= 1) {
            return "redirect:order.do?listOrder";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "updateOrder")
    public String update(Order order) {
        int count = orderService.update(order);
        if (count >= 1) {
            return "redirect:order.do?listOrder";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "findByCidOrder")
    public String findByCid(int cid, ModelMap map) {
        Order order = orderService.findByCid(cid);
//        System.out.print(order);
        map.put("order", order);
        return "/jj/ht/order_edit.jsp";
    }

    @RequestMapping(params = "findMoByOrder")
    public String findMoByOrder(String CGjc, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<Order> orderList1 = orderService.findMoByOrder(CGjc);
        int count = orderList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("order", orderList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/orderList.jsp";
    }
}
