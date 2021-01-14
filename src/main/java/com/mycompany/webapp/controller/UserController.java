package com.mycompany.webapp.controller;


import com.mycompany.webapp.dto.UserDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserController {  //hyunwoo

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private UserDTO user;

    @GetMapping(value = "regist")  //됐고
    public String form(){
        logger.info("실행 : /user/regist-get");
        return "user/regist";
    }

    @PostMapping(value = "regist")  //됐고
    public String regist(HttpServletRequest req){
        logger.info("실행 : /user/regist-post");
        String id = req.getParameter("userid");
        String password = req.getParameter("userpassword");
        String name = req.getParameter("username");
        String phoneNumber = req.getParameter("userphonenumber");
        String email = req.getParameter("useremail");
        user = new UserDTO(id, password, name, phoneNumber, email);
        System.out.println(user);
        return "redirect:/user/login";
    }

    @GetMapping("login")  //됐고
    public String getLogin(){
        logger.info("실행 : /user/login");
        return "user/login";
    }
    @PostMapping("login")  //됐고
    public String login(HttpServletRequest req){
        logger.info("실행 : /user/login");
        String userid = req.getParameter("userid");
        String userpwd = req.getParameter("userpassword");
        System.out.println(userid+" "+userpwd);
        HttpSession session = req.getSession();
        user = new UserDTO(userid);
        session.setAttribute("userinfo", user);  //세션추가
        return "redirect:/";
    }
    @GetMapping(value ="logout")  //됐고
    public String logout(HttpServletRequest req){
        logger.info("실행 : /user/logout");
        HttpSession session = req.getSession();
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping(value = "detail")
    public String detail(){
        logger.info("실행 : /user/detail");
        return "";//user detail.jsp 연결
    }


    
}
