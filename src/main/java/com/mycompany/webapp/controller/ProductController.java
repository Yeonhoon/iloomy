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

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.dto.DeliveryStatus;
import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.OrderItemsDTO;
import com.mycompany.webapp.dto.OrderStatus;
import com.mycompany.webapp.dto.OrdersDTO;
import com.mycompany.webapp.service.ItemsService;
import com.mycompany.webapp.service.MemberService;
import com.mycompany.webapp.service.OrderService;

@Controller
@RequestMapping("product")
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
    
    @GetMapping("/list")  //jisun , no parameter
    public String itemslist(Model model){
    	List<ItemsDTO> list = itemsService.getItemsList();
    	model.addAttribute("list", list);
        logger.info("실행 : product/list");
        return "product/productList";
    }
   
    
    @Resource private ItemsService itemsService;
    
    @GetMapping(value = "detail")
    public String listDetail(int no, Model model){
        System.out.println(no);
        logger.info("실행 : product/detail");
//        ItemsDTO item = itemsService.getItem(no);
//        System.out.println(item.toString());
//        model.addAttribute("item", item);
        model.addAttribute("lno", no);
        return "product/productDetail";
    }
    
    @GetMapping(value = "cart2")  //연결 header에서 지선 추가
    public String cart2(){
        logger.info("실행 : product/cart2");
        return "product/cart";
    }
    @Resource OrderService orderService;
    @Resource MemberService memberService;
 
    @PostMapping(value = "cart")  //hyun woo 지선 추가
    public String cart(int lno, HttpSession session, HttpServletRequest req){
    	String pColor = req.getParameter("colorOption");
		String pOption = req.getParameter("productOption");
		String userId = (String)session.getAttribute("userinfo");
		AddressDTO address = new AddressDTO("안성시","고수2로","123456");
		OrdersDTO dtoa = new OrdersDTO();
     	dtoa.setOrderStatus(OrderStatus.Cart);

     	
		DeliveryDTO deliveryDTO = new DeliveryDTO(address, DeliveryStatus.Ready);
		orderService.saveDelivery(deliveryDTO);
		//product number 받기와 추가로 넣을 때는 어떻게 할지 status=cart에 있는거 list로 받아 와야하낭? 
		System.out.println("lno: " + lno);
		
		ItemsDTO pDTO = new ItemsDTO();
		pDTO.setItemsNo(lno);
		pDTO.setItemsName("볼케");
		pDTO.setItemsColor(pColor);
		pDTO.setItemsOption(pOption);
		pDTO.setItemsPrice(1009000);


    	session.setAttribute("pDTO", pDTO);
        logger.info("실행 : product/cart");
        return "product/cart";//product/cart.jsp 연결
    }
    
    @GetMapping(value = "/order")
 	public String method1(OrderItemsDTO orderItem, HttpServletRequest request, ModelMap model, int hidden) throws Exception {
 		String [] arr = request.getParameterValues("check");
// 		if(hidden ==1) {
// 			
// 		}else if(hidden==2) {
// 			
// 		}
 		
// 		1.orderoderno 가져와고
// 		2. itemsItemsNo 가졍고
// 		3. orderItem.set(1);
// 						set(2);
// 						dao.save(orderItem);
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
