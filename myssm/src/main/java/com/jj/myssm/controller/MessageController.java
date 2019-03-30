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
    public String listMessage(Integer index , Integer page, ModelMap map ){
        if(index==null || index <=0)
            index = 5;
        if(page==null || page<=0){
            page = 0;
        }else{
            page=page-1;
        }
        int count = messageService.countMessage();
        int total = count%index==0?count/index:count/index+1;
        map.put("total",total);
        map.put("count",count);
        map.put("index",index);
        List<Message> messageList = messageService.getListMessage(index,page);
        map.put("message",messageList);
        return "/jj/ht/messageList.jsp";
    }
    @RequestMapping("/deleteMessage.do")
    public String delete(int cid){
        int count=messageService.delete(cid);
        System.out.print(count);
        return "listMessage.do";

    }
    @RequestMapping("/addMessage.do")
    public String add(Message message){
        int count= messageService.add(message);
        return "listMessage.do";
    }
    @RequestMapping("/updateMessage.do")
    public String update(Message message){
        messageService.update(message);
        return "listMessage.do";
    }
    @RequestMapping("/findByCidMessage.do")
    public String findByCid(int cid,ModelMap map){
        Message message= messageService.findByCid(cid);
        System.out.print(message);
        map.put("message",message);
        return "/jj/ht/message-edit.jsp";
    }

}
