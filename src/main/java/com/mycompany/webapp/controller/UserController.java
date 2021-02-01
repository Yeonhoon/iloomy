package com.mycompany.webapp.controller;


import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.UserDTO;
import com.mycompany.webapp.service.MemberService;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

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

    @GetMapping(value ="logout")  //됐고
    public String logout(HttpServletRequest req,  HttpSession session){
        logger.info("실행 : /user/logout");
        session.invalidate();
        return "redirect:/";
    }




    @PostMapping("findpw")
    public void findpw(UserDTO users, HttpServletResponse res) throws IOException {

        System.out.println(users.toString());

        Map<String, String> map = new HashMap<>();
        map.put("id",users.getId());
        map.put("name", users.getName());

        String result = mService.searchPw(map);

        res.setContentType("application/json; charset=UTF-8");
        JSONObject object = new JSONObject();
        object.put("result", result);
        PrintWriter pw = res.getWriter();
        pw.println(object.toString());

        pw.flush();
        pw.close();

        System.out.println(result);
    }
    @GetMapping("findpwd")
    public String findpwForm(){
        return "user/findPwd";
    }

    @GetMapping(value = "detail")
    public String detail(HttpSession session, Model model){
        logger.info("실행 : /user/detail");
        String id = (String) session.getAttribute("userinfo");
        UserDTO user = mService.userInform(id);
        System.out.println("/user/detail : " + user.toString());
        model.addAttribute("userInform",user);
        return "user/detail";
    }

    @PostMapping("update")
    public String update(HttpSession session, HttpServletRequest req){
        System.out.println("helloupdate");
        String id = (String) session.getAttribute("userinfo");
        String password = req.getParameter("userpassword");
        String name = req.getParameter("username");
        String city = req.getParameter("city");
        String street = req.getParameter("street");
        String zipcode = req.getParameter("zipcode");

        address = new AddressDTO(city, street, zipcode);
        user = new UserDTO(id, password, name, address);


        Map<String, Object> map = new HashMap<>();

        map.put("userid",id);
        map.put("userdto",user);
        int num = mService.updateUser(map);
        System.out.println(num);
        return "redirect:/";
    }


    
}
