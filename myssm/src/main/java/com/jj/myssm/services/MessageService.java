package com.jj.myssm.services;

import com.jj.myssm.dao.IMessageDAO;
import com.jj.myssm.vo.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2019/3/30.
 */
@Service
public class MessageService {
    @Autowired
    IMessageDAO iMessageDAO;
    public Message findByCid(int cid){return iMessageDAO.findByCid(cid);}
    public int countMessage(){return iMessageDAO.countMessage();}
    public int delete(int cid){return iMessageDAO.delete(cid); }
    public int add(Message message){return iMessageDAO.add(message);}
    public int update(Message message){return iMessageDAO.update(message);}
    public List<Message> getListMessage(Integer start , Integer size) {
        return iMessageDAO.getListMessage(start,size);}
    public List<Message> findMoByMessage(String CSpmc){
        return iMessageDAO.findMoByMessage(CSpmc);
    }
}
