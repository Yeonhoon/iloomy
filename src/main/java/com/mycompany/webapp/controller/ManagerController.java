package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("manager")
public class ManagerController {

    private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);
    
    @PostMapping(value = "enroll/product")
    public String enroll(){
        logger.info("실행 : /manager/enroll/product");
        return "redirect:/manager/enroll/next";
    }
    @PostMapping(value = "update/product")
    public String update(){
        logger.info("실행 : /manager/update/product");
        return "redirect:/manager/enroll/next";
    }
    @GetMapping(value = "enroll/next")
    public String back(){
        logger.info("실행 : /manager/enroll/next");
        return "";//product/list.jsp 연결
    }
    @GetMapping(value = "enroll/detail")
    public String inform(){
        logger.info("실행 : /manager/enroll/detail");
        return "";//product update.jsp 연결
    }
}
