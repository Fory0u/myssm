package com.jj.myssm.controller;

import com.alibaba.druid.support.json.JSONUtils;
import com.jj.myssm.dao.IShopDAO;
import com.jj.myssm.dao.ISplxDAO;
import com.jj.myssm.services.ShopService;
import com.jj.myssm.vo.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * gxd修改成params
 */
@Controller
@RequestMapping("/shop.do")
public class ShopController {
    @Autowired
    ShopService shopService;
    @Autowired
    IShopDAO iShopDAO;
    @Autowired
    ISplxDAO iSplxDAO;

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

    /***
     * 首页商品页面
     * @param searchMap
     * @param map
     * @return
     */
    @RequestMapping(params = "listShopQt")
    public String listShopQt(ModelMap map){

        //查询所有商品分类
        List<Map<String,Object>> listSplx = iSplxDAO.getAllSplx();
        List<Map<String,Object>> listSp = new ArrayList<Map<String,Object>>();

        for(int i=0;i<listSplx.size();i++){
            listSp =iShopDAO.getShopByLxid(listSplx.get(i).get("c_id").toString());
            listSplx.get(i).put("listSp",listSp);
        }
        map.put("listSplx",listSplx);
        return "/jj/jjq/shops商品/sysp.jsp";
    }

    /**
     * 商品条件搜索
     * @param searchMap
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(params = "searchByTj",produces = "text/html;charset=UTF-8")
    public Object searchByTj(@RequestBody Map<String,String> searchMap ) {

        Map<String,Object> result  = new HashMap<String,Object>();
        //商品分类
        List<Map<String,Object>> listSplx = new ArrayList<Map<String,Object>>();
        List<Map<String,Object>> listSp = new ArrayList<Map<String,Object>>();

        if( "".equals(searchMap.get("spfl")) ){
            listSplx = iSplxDAO.getAllSplx();
        }else{
            Map<String,Object> aa = new HashMap<String,Object>();
            aa.put("c_id",searchMap.get("spfl"));
            aa.put("c_lxmc",iSplxDAO.findByCid(Integer.parseInt(searchMap.get("spfl"))).getCIxmc());
            listSplx.add(aa);
        }
        for(int i=0;i<listSplx.size();i++){
            searchMap.put("spfl",listSplx.get(i).get("c_id").toString());
            listSp= iShopDAO.searchByTj(searchMap);
            listSplx.get(i).put("listSp",listSp);
        }


        result.put("listSplx",listSplx);

        return JSONUtils.toJSONString(result);
    }
}
