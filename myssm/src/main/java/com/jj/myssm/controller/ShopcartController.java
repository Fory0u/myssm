package com.jj.myssm.controller;

import com.alibaba.druid.support.json.JSONUtils;
import com.jj.myssm.services.ShopService;
import com.jj.myssm.services.ShopcartService;
import com.jj.myssm.services.UserService;
import com.jj.myssm.vo.Shop;
import com.jj.myssm.vo.Shopcart;
import com.jj.myssm.vo.User;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * gxd修改成params
 */
@Controller
@RequestMapping("/shopcart.do")
public class ShopcartController {
    @Autowired
    ShopcartService shopcartService;
    @Autowired
    UserService userService;
    @Autowired
    ShopService shopService;

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
            return "redirect:shopcart.do?listShopcart";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "addShopcart")
    public String add(Shopcart shopcart) {
        int count = shopcartService.add(shopcart);
        if (count >= 1) {
            return "redirect:shopcart.do?listShopcart";
        } else {
            return "no";
        }
    }

    @RequestMapping(params = "updateShopcart")
    public String update(Shopcart shopcart) {
        int count = shopcartService.update(shopcart);
        if (count >= 1) {
            return "redirect:shopcart.do?listShopcart";
        } else {
            return "no";
        }
    }

    /**
     * 前台头部购物车
     * @param cid
     * @param map
     * @return
     */
    @RequestMapping(params = "findShopCartByCId")
    public String findShopCartByCId(String cid, ModelMap map,HttpSession session) {
        User user = (User) session.getAttribute("user");
        if("".equals(cid) || cid == null ){
            return "redirect:shop.do?listShopQt";
        }else if(user == null){
            return "redirect:logout.do";
        }
        Shopcart shopcart = shopcartService.findByCid(Integer.parseInt(cid));
        List<Shop> list =  shopCartToShopList(shopcart);
        map.put("shopList", list);
        return "/jj/jjq/shop购物车/shopcart.jsp";
    }

    private List<Shop> shopCartToShopList(Shopcart shopcart) {
        String spid = shopcart.getCSpid();
        String spsl = shopcart.getCSpsl();
        List<Shop> list = new ArrayList<Shop>();
        String[] spidArr = new String[] {};
        String[] spslArr = new String[] {};
        if (spid != null) {
            spidArr = spid.split("\\;+");
        }
        if (spsl != null) {
            spslArr = spsl.split("\\;+");
        }

        for (int i = 0; i < spidArr.length; i++) {
            Shop shop = shopService.findByCid(Integer.parseInt(spidArr[i]));
            shop.setMAxSl(Integer.parseInt(spslArr[i]));
            list.add(shop);
        }
        return list;
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
    @ResponseBody
    @RequestMapping(params = "addGwc",produces = "text/html;charset=UTF-8")
    public Object addGwc(@RequestBody Map<String,String> map, HttpSession session) {
        Map<String,Object> result =  new HashMap<String,Object>();
        User user = (User) session.getAttribute("user");
        if(user == null ){
            result.put("success","no");
            return JSONUtils.toJSONString(result);
        }

        if(session.getAttribute("shopCartId") == null || map.get("shopcartid") == null  ){
            //会话中不存在此次购物车，则新建购物车
            Shopcart shopcart = new Shopcart();
            addShopToShopCart(map,shopcart,session);
            shopcartService.add(shopcart);
            session.setAttribute("shopCartId",shopcart.getCId());
            result.put("shopcarid",shopcart.getCId());
        }else{
            int shopcarid = Integer.parseInt(session.getAttribute("shopCartId").toString());
            Shopcart shopcart = shopcartService.findByCid(shopcarid);
            addShopToShopCart(map,shopcart,session);
            shopcartService.update(shopcart);
            result.put("shopcarid",shopcarid);
        }
        result.put("success","ok");
        return JSONUtils.toJSONString(result);
    }



    public void addShopToShopCart(Map<String,String> map, Shopcart shopcart, HttpSession session) {
        User user = (User) session.getAttribute("user");
        String spmc = (String) map.get("spmc");
        String spsl = (String) map.get("spsl");
        String spid = (String) map.get("spid");
        String spdj = (String) map.get("spdj");
        String[] spmcArr = new String[] {};
        String[] spslArr = new String[] {};
        String[] spidArr = new String[] {};
        String[] spdjArr = new String[] {};
        Float zj = 0.0f;
        Integer zs = 0;
        if (spmc != null) {
            spmcArr = spmc.split("\\;+");
            spmc = StringUtils.join(spmcArr, ";");
        }
        if (spsl != null) {
            spslArr = spsl.split("\\;+");
            spsl = StringUtils.join(spslArr, ";");
        }
        if (spid != null) {
            spidArr = spid.split("\\;+");
            spid = StringUtils.join(spidArr, ";");
        }
        if (spdj != null) {
            spdjArr = spdj.split("\\;+");
            spdj = StringUtils.join(spdjArr, ";");
        }

        for (int i = 0; i < spidArr.length; i++) {
            Shop shop = shopService.findByCid(Integer.parseInt(spidArr[i]));
            zj += shop.getFSpjg() * Integer.parseInt(spslArr[i]);
        }
        for (int i = 0; i < spslArr.length; i++) {
            zs += Integer.parseInt(spslArr[i]);
        }
        shopcart.setCSpmc(spmc);
        shopcart.setCSpsl(spsl);
        shopcart.setCSpid(spid);
        shopcart.setCSpdj(spdj);
        shopcart.setFZj(zj);
        shopcart.setNZs(zs);
        shopcart.setCUserId(String.valueOf(user.getCId()));
        shopcart.setCUserName(user.getCName());
    }

}
