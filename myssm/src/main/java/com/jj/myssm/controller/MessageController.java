package com.jj.myssm.controller;

import com.alibaba.druid.support.json.JSONUtils;
import com.jj.myssm.dao.IMessageDAO;
import com.jj.myssm.dao.IShopDAO;
import com.jj.myssm.services.MessageService;
import com.jj.myssm.vo.Message;
import com.jj.myssm.vo.Shop;
import com.jj.myssm.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2019/3/30.
 */
@Controller
public class MessageController {
    @Autowired
    MessageService messageService;

    @Autowired
    IShopDAO iShopDAO;
    @Autowired
    IMessageDAO iMessageDAO;

    @RequestMapping("/listMessage.do")
    public String listMessage(Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        int start = (index - 1) * size;//开始数
        int count = messageService.countMessage();
        int total = count % size == 0 ? count / size : count / size + 1;

        List<Message> messageList = messageService.getListMessage(start, size);

        map.put("total", total);
        map.put("index", index);
        map.put("message", messageList);

        return "/jj/ht/messageList.jsp";
    }

    @RequestMapping("/deleteMessage.do")
    public String delete(int cid) {
        int count = messageService.delete(cid);
        System.out.print(count);
        return "redirect:listMessage.do";

    }

    @RequestMapping("/addMessage.do")
    public String add(Message message) {
        int count = messageService.add(message);
        return "listMessage.do";
    }

    @RequestMapping("/updateMessage.do")
    public String update(Message message) {
        messageService.update(message);
        return "redirect:listMessage.do";
    }

    @RequestMapping("/findByCidMessage.do")
    public String findByCid(int cid, ModelMap map) {
        Message message = messageService.findByCid(cid);
        System.out.print(message);
        map.put("message", message);
        return "/jj/ht/message_edit.jsp";
    }

    @RequestMapping("/findMoByMessage.do")
    public String findMoByMessage(String CSpmc, Integer index, ModelMap map) {
        int size = 5;//每页个数
        if (index == null || index <= 0)
            index = 1;
        List<Message> messageList1 = messageService.findMoByMessage(CSpmc);
        int count = messageList1.size();
        int total = count % size == 0 ? count / size : count / size + 1;

        map.put("message", messageList1);
        map.put("total", total);
        map.put("index", index);
        return "/jj/ht/messageList.jsp";
    }


    @RequestMapping("/getAllMessageToQt.do")
    public String getAllMessageToQt(ModelMap map, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if(user == null ){
            return "redirect:logout.do";
        }

        List<Message> messageList = iMessageDAO.getAllMessage();
        List<Shop> shopList = iShopDAO.getAllShop();
        map.put("messageList", messageList);
        map.put("shopList", shopList);
        return "/jj/jjq/liuyan.jsp";

    }

    @ResponseBody
    @RequestMapping(value = "/addLy.do",produces = "text/html;charset=UTF-8")
    public Object addLy(@RequestBody Map<String,String> map ) {
        Map<String,Object> result  = new HashMap<String,Object>();
        Message message = new Message();

        mapToMessage(map,message);
        int count = messageService.add(message);

        if(count > 0 ){
            result.put("success","ok");
            result.put("CLxnr",message.getCLxnr());
        }else{
            result.put("success","no");
        }
        return JSONUtils.toJSONString(result);
    }

    /**
     * 将前台的map对象转成实体类Message
     * @param map
     * @param message
     */
    private void mapToMessage(Map<String, String> map, Message message) {
        message.setCLxnr(map.get("lxnr"));
        message.setCUserId(map.get("userid"));
        message.setCUserName(map.get("username"));
        message.setCSpid(map.get("spid"));
        message.setCSpmc(map.get("spmc"));
    }
}
