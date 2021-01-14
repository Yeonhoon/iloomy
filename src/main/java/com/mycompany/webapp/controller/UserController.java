package com.mycompany.webapp.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {  //hyunwoo

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @GetMapping(value = "regist") 
    public String form(){
        logger.info("실행 : /user/regist-get");
        return "";//regist.jsp 연결
    }

    @PostMapping(value = "regist")
    public String regist(){
        logger.info("실행 : /user/regist-post");
        return "redirect:/user/save";
    }
    @GetMapping(value = "save")
    public String next(){
        logger.info("실행 : /user/save");
        return "";//main.jsp 연결
    }
    @PostMapping(value = "login")
    public String login(){
        logger.info("실행 : /user/login");
        return ""; //main.jsp 연결
    }
    @GetMapping(value = "detail")
    public String detail(){
        logger.info("실행 : /user/detail");
        return "";//user detail.jsp 연결
    }

    
}
