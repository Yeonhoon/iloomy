package com.mycompany.webapp.controller;


import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.UserDTO;
import com.mycompany.webapp.service.MemberService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserController {  

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private UserDTO user;
    private AddressDTO address;
    @Autowired
    MemberService mService;
    

    @GetMapping(value = "regist")  
    public String form(){
        logger.info("실행 : /user/regist-get");
        return "user/regist";
    }

    @PostMapping(value = "regist")  
    public String regist(HttpServletRequest req){
        logger.info("실행 : /user/regist-post");
        String id = req.getParameter("userid");
        String password = req.getParameter("userpassword");
        String name = req.getParameter("username");
        String city = req.getParameter("city");
        String street = req.getParameter("street");
        String zipcode = req.getParameter("zipcode");
        
        address = new AddressDTO(city, street, zipcode);
        user = new UserDTO(id, password, name, address);
        
        mService.regist(user);
        
        return "redirect:/user/login";
    }

    @GetMapping("login")  
    public String getLogin(){
        logger.info("실행 : /user/login");
        return "user/login";
    }
    @PostMapping("login") 
    public String login(UserDTO users, HttpSession session){
        logger.info("실행 : /user/login");
        System.out.println(users.toString());
        
        
        String result = mService.selectById(users);
        
        
		if(result.equals("success")) session.setAttribute("userinfo", users.getId());        

        return "redirect:/";
    }
    
//    @PostMapping("login2") 
//    public String login2(UserDTO users, HttpSession session){
//        logger.info("실행 : /user/login2");
//        System.out.println(users.toString());
//        
//        
//        String result = mService.selectById2(users);
//        
//		if(result.equals("success")) session.setAttribute("userinfo", users.getId());        
//
//        return "redirect:/";
//    }
    
    @GetMapping(value ="logout")  //됐고
    public String logout(HttpServletRequest req,  HttpSession session){
        logger.info("실행 : /user/logout");
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping(value = "detail")
    public String detail(){
        logger.info("실행 : /user/detail");
        return "";//user detail.jsp 연결
    }


    
}
