package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.ProductDTO;

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
        return "product/productDetail";//product/productDetail.jsp 연결
    }
    
    @GetMapping(value = "cart2")  //연결 header에서 지선 추가
    public static String cart2(){
        logger.info("실행 : product/cart2");
        return "product/cart";//product/cart.jsp 
    }
    
    @GetMapping(value = "cart")  //hyun woo 지선 추가
    public static String cart(HttpSession session){
    	List <ProductDTO> list = new ArrayList<>();
    	for (int i=1; i<=2; i++) {
    		ProductDTO pDTO = new ProductDTO();
    		pDTO.setNo(1);
    		pDTO.setpName("볼케" + i);
    		pDTO.setpOption("브라운" + i);
    		pDTO.setpPrice(1009000);
    		list.add(pDTO);
    	};
    	session.setAttribute("plist", list);
        logger.info("실행 : product/cart");
        return "product/cart";//product/cart.jsp 연결
    }
    
    @GetMapping(value = "/order")
	public String method1(HttpServletRequest request, ModelMap model) throws Exception {
		String [] arr = request.getParameterValues("check");
		for (String i : arr) {
			System.out.println(i);
		}
		model.addAttribute("arr", arr);
		return "product/productList";
	}
    

}
