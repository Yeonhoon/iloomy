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
    
    @PostMapping(value = "enroll/product")  //hyemin, DTO
    public String enroll(){
        logger.info("실행 : /manager/enroll/product");
        return "redirect:/manager/enroll/next";
    }
    @PostMapping(value = "update/product")  //hoon  , DTO
    public String updatebotton(){
        logger.info("실행 : /manager/update/product");
        return "redirect:/manager/enroll/next";
    }
    @GetMapping(value = "enroll/next")    //hoon  , no parameter
    public String back(){
        logger.info("실행 : /manager/enroll/next");
        return "";//product/productList.jsp 연결
    }
    @GetMapping(value = "enroll/write")  //hyemin  , no parameter
    public String inform(){
        logger.info("실행 : /manager/enroll/write");
        return "";//manager/writeForm.jsp 연결
    }
    @GetMapping(value = "update/product")  //hymin  , get parameter(number of imagelist), fulfill random
    public String update(int random){
    	//log
        logger.info("실행 : /manager/update/product");
        return "";//manager/updateDel.jsp 연결
    }
}
