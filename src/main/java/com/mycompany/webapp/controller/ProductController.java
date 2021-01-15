package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("product")
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
    
    @GetMapping(value = "list")  //jisun , no parameter
    public static String list(){
        logger.info("실행 : product/list");
        return "product/productList";//product/productList.jsp 연결
    }
    @GetMapping(value = "detail") //jisun  , pramater no of list.. fulfill no
    public static String listDetail(int no){
        System.out.println(no);
        logger.info("실행 : product/detail");
        return "";//product/productDetail.jsp 연결
    }
    @GetMapping(value = "cart")  //hyun woo 
    public static String cart(){
        logger.info("실행 : product/cart");
        return "";//product/cart.jsp 연결
    }

}
