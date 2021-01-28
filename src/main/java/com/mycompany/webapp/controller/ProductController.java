package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.OrderItemsDTO;
import com.mycompany.webapp.dto.OrderStatus;
import com.mycompany.webapp.dto.OrdersDTO;
import com.mycompany.webapp.service.ItemsService;

@Controller
@RequestMapping("product")
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
    
    @GetMapping("/list")  //jisun , no parameter
    public String itemslist(Model model){
    	List<ItemsDTO> list = itemsService.getItemsList();
    	model.addAttribute("list", list);
        logger.info("실행 : product/list");
        return "product/productList";//product/productList.jsp 연결
    }
    
    @Resource private ItemsService itemsService;
    
    @GetMapping(value = "detail") //jisun  , pramater no of list.. fulfill no
    public String listDetail(int no, Model model){
        System.out.println(no);
        logger.info("실행 : product/detail");
//        ItemsDTO item = itemsService.getItem(no);
//        System.out.println(item.toString());
//        model.addAttribute("item", item);
        model.addAttribute("pno", no);
        return "product/productDetail";//product/productDetail.jsp 연결
    }
    
    @GetMapping(value = "cart2")  //연결 header에서 지선 추가
    public String cart2(){
        logger.info("실행 : product/cart2");
        return "product/cart";//product/cart.jsp 
    }
    
    @PostMapping(value = "cart")  //hyun woo 지선 추가
    public String cart(int pno, HttpSession session, HttpServletRequest req){
    	String pColor = req.getParameter("colorOption");
		String pOption = req.getParameter("productOption");
//		logger.info(pColor); 
//		logger.info(pOption);
//		session.setAttribute("pColor", pColor);
//		session.setAttribute("pOption", pOption);
		
		//product number 받기와 추가로 넣을 때는 어떻게 할지 status=cart에 있는거 list로 받아 와야하낭? 
		System.out.println("pno" + pno);
		
		ItemsDTO pDTO = new ItemsDTO();
		pDTO.setItemsNo(pno);
		pDTO.setItemsName("볼케");
		pDTO.setItemsColor(pColor);
		pDTO.setItemsOption(pOption);
		pDTO.setItemsPrice(1009000);


    	session.setAttribute("pDTO", pDTO);
        logger.info("실행 : product/cart");
        return "product/cart";//product/cart.jsp 연결
    }
    
    @GetMapping(value = "/order")
	public String method1(OrderItemsDTO orderItem, HttpServletRequest request, ModelMap model) throws Exception {
		String [] arr = request.getParameterValues("check");
//		1.orderoderno 가져와고
//		2. itemsItemsNo 가졍고
//		3. orderItem.set(1);
//						set(2);
//						dao.save(orderItem);
    	orderItem.setItemsOrder(1, 2);
    	
    	OrdersDTO dtoa = new OrdersDTO();
    	dtoa.setOrderStatus(OrderStatus.Cart);
    	System.out.println(dtoa.toString());
    	
		System.out.println(orderItem.toString());
		for (String i : arr) {
			System.out.println(i);
		}
		model.addAttribute("arr", arr);
		return "product/productList";
	}
    

}
