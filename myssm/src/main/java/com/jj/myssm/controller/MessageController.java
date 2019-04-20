package com.jj.myssm.controller;

import com.jj.myssm.services.MessageService;
import com.jj.myssm.vo.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Controller
public class MessageController {
    @Autowired
    MessageService messageService;

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
}
