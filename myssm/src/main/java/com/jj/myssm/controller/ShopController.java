package com.jj.myssm.controller;

import com.jj.myssm.services.ShopService;
import com.jj.myssm.vo.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * gxd修改成params
 */
@Controller
@RequestMapping("/shop.do")
public class ShopController {
    @Autowired
    ShopService shopService;

    @RequestMapping(params = "listShop")
    public String listShop(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = shopService.countShop();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<Shop> shopList = shopService.getListShop(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("shop", shopList);

        return "/jj/ht/shopList.jsp";
    }

    @RequestMapping(params = "deleteShop")
    public String delete(int cid) {
        int count = shopService.delete(cid);
//        System.out.print(count);
        if (count >= 1) {
            return "redirect:shop.do?listShop";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "addShop")
    public String add(Shop shop) {
        int count = shopService.add(shop);
        if (count >= 1) {
            return "redirect:shop.do?listShop";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "updateShop")
    public String update(Shop shop) {
        int count = shopService.update(shop);
        if (count >= 1) {
            return "redirect:shop.do?listShop";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "findByCidShop")
    public String findByCid(int cid, ModelMap map) {
        Shop shop = shopService.findByCid(cid);
//        System.out.print(shop);
        map.put("shop", shop);
        return "/jj/ht/shop_edit.jsp";
    }

    @RequestMapping(params = "findMoByShop")
    public String findMoByShop(String CGjc, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<Shop> shopList1 = shopService.findMoByShop(CGjc);
        int count = shopList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("shop", shopList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/shopList.jsp";
    }
}
