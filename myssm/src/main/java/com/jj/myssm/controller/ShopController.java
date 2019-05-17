package com.jj.myssm.controller;
import java.io.File;
import com.alibaba.druid.support.json.JSONUtils;
import com.jj.myssm.dao.IShopDAO;
import com.jj.myssm.dao.ISplxDAO;
import com.jj.myssm.services.ShopService;
import com.jj.myssm.services.ShopcartService;
import com.jj.myssm.vo.Shop;
import com.jj.myssm.vo.Shopcart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.net.URISyntaxException;
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
    @Autowired
    ShopcartService shopcartService;

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
    public String add(MultipartFile photo,String CUserId, String CUserName,  String CSpmc,
                      String CSpms, String FSpjg, String NSpsl, String CType, String CCzr , HttpServletRequest request) {
        Shop shop = new Shop();
        shop.setCUserId(CUserId);
        shop.setCUserName(CUserName);
        shop.setCPhoto(getPhoto(photo,request));
        shop.setCSpmc(CSpmc);
        shop.setCSpms(CSpms);
        shop.setFSpjg(Float.parseFloat(FSpjg));
        shop.setNSpsl(Integer.parseInt(NSpsl));
        shop.setCType(CType);
        shop.setCCzr(CCzr);
        int count = shopService.add(shop);
        if (count >= 1) {
            return "redirect:shop.do?listShop";
        } else {
            return "no";
        }
    }

    private String getPhoto(MultipartFile file, HttpServletRequest request) {
        //获取文件名
        String photo = file.getOriginalFilename();
        //判断文件是否存在
        if(!file.getOriginalFilename().equals("")){
            //定义上传路径
//			String str = "E:\\tomcat\\apache-tomcat-7.0.90\\webapps\\shy\\upload";

            String str = "";
            try {
                String str1 = Thread.currentThread().getContextClassLoader().getResource("").toURI().getPath();
                str = str1.substring(1,str1.indexOf(request.getContextPath())+request.getContextPath().length() ) + "/upload";

            } catch (URISyntaxException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }


//			String name=file.getOriginalFilename();
            //文件名拼接到指定路径上
            File desc = new File(str+"\\"+file.getOriginalFilename());
            File descMain = new File(str);
            if (!descMain.exists()) {
//                System.out.println("dir not exists, create it ...");
                descMain.mkdir();
            }

            //从内存中读到指定的磁盘中
            try {
                file.transferTo(desc);
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return photo;
    }

    @RequestMapping(params = "updateShop")
    public String update(MultipartFile photo,String CId,String CUserId,String CUserName,String CSpmc,
                      String CSpms,String FSpjg,String NSpsl,String CType,String CCzr, HttpServletRequest request) {
        Shop shop = new Shop();
        shop.setCId(Integer.parseInt(CId));
        shop.setCUserId(CUserId);
        shop.setCUserName(CUserName);
        shop.setCPhoto(getPhoto(photo,request));
        shop.setCSpmc(CSpmc);
        shop.setCSpms(CSpms);
        shop.setFSpjg(Float.parseFloat(FSpjg));
        shop.setNSpsl(Integer.parseInt(NSpsl));
        shop.setCType(CType);
        shop.setCCzr(CCzr);
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

    /**
     *
     * @param cid
     * @param map
     * @return
     */
    @RequestMapping(params = "toSpxqym")
    public String toSpxqym(int cid, ModelMap map, HttpSession session) {
        Shop shop = shopService.findByCid(cid);
//        System.out.print(shop);
        map.put("shop", shop);
        if(session.getAttribute("shopCartId") != null ){
            int shopcarid = Integer.parseInt(session.getAttribute("shopCartId").toString());
            Shopcart shopcart = shopcartService.findByCid(shopcarid);
            session.setAttribute("shopcart",shopcart);
        }
        return "/jj/jjq/商品详情页面/spxqym.jsp";
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
    @RequestMapping(params = "findMoByShopQt")
    public String findMoByShopQt(String CGjc, ModelMap map) {

        Map<String,Object> aaa = null;
        //查询到的商品
        List<Map<String,Object>> shopList = iShopDAO.findMoByShopQt(CGjc);
        //查询到的商品的分类id
        List<String> shopFlid = iShopDAO.findMoByShopFl(CGjc);
        List<Map<String,Object>> listSplx = new ArrayList <Map<String,Object>>();

        for(int i=0;i<shopFlid.size();i++){
            aaa = new HashMap<String,Object>();
            aaa.put("c_id",shopFlid.get(i));
            aaa.put("c_lxmc",iSplxDAO.findByCid(Integer.parseInt(shopFlid.get(i))).getCIxmc());
            aaa.put("listSp",getShopList(shopList,shopFlid.get(i)));
            listSplx.add(aaa);
        }
        map.put("listSplx",listSplx);


        return "/jj/jjq/shops商品/sysp.jsp";
    }

    private List<Map<String,Object>> getShopList(List<Map<String, Object>> shopList, String s) {
        List<Map<String,Object>> listSp = new ArrayList<Map<String,Object>>();
        for(int i=0;i<shopList.size();i++){
            if(s.equals((String)(shopList.get(i).get("c_type")))){
                listSp.add(shopList.get(i));
            }
        }
        return listSp;
    }

    /***
     * 首页商品页面
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
