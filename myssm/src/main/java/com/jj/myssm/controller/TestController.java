package com.jj.myssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by admin on 2019/3/30.
 */
@Controller
@RequestMapping("/test.do")
public class TestController {
    @RequestMapping(params = "test")
    public void test(String t){

        System.out.println(t);
    }
}
