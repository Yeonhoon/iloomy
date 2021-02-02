package com.mycompany.webapp.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.dto.DeliveryStatus;
import com.mycompany.webapp.dto.ImageDTO;
import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.OrderItemsDTO;
import com.mycompany.webapp.dto.OrderStatus;
import com.mycompany.webapp.dto.OrdersDTO;
import com.mycompany.webapp.dto.UserDTO;
import com.mycompany.webapp.service.DeliveryService;
import com.mycompany.webapp.service.ImagesService;
import com.mycompany.webapp.service.ItemsService;
import com.mycompany.webapp.service.MemberService;
import com.mycompany.webapp.service.OrderService;

@Controller
@RequestMapping("product")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Resource
	OrderService orderService;
	@Resource
	MemberService memberService;
	@Resource
	DeliveryService deliveryService;
	@Autowired
	MemberService mService;

	@Resource
	private ItemsService itemsService;
	@Resource
	private ImagesService imagesService;

	// 제품 목록 보여주기
	@GetMapping("/list")
	public String itemslist(Model model) {
		List<ItemsDTO> list = itemsService.getItemsList();
		model.addAttribute("list", list);
		logger.info("실행 : product/list");
		return "product/productList";
	}

	//사진 정보 불러오기
    @GetMapping(value = "/itemsAttach")
    public void itemsAttach(int no, HttpSession sesson, HttpServletResponse response) throws Exception {
    	
    	ItemsDTO item = itemsService.getItem(no);
        String filePath = null;

        
        if(item.getItemsAttachOname() != null) {
        	String itemAttach = item.getItemsAttachSname();
        	filePath = "D:/MW/uploadfiles/items/" + itemAttach;
        	
        	response.setContentType(item.getItemsAttachtype());
        	
        	String oname = item.getItemsAttachOname();
        	oname = new String(oname.getBytes("UTF-8"), "ISO-8859-1");
        	response.setHeader("Content-Disposition", "attachment; filename=\""+ oname +"\"");
        } else {
        	filePath= "D:/MW/uploadfiles/items/defaultimage.jpg";
        	response.setContentType("image/jpg");
        }

        OutputStream os = response.getOutputStream();
        InputStream is = new FileInputStream(filePath);
        FileCopyUtils.copy(is,os);
        os.flush();
        os.close();
        is.close();
    }
    
    
    //상세보기 페이지로 이동
    @GetMapping("/detail")
    public String itemsDetail(int no, Model model){
        logger.info("실행 : product/detail");

        ItemsDTO item = itemsService.getItem(no); // main 사진 불러오기

        model.addAttribute("lno", no);
        model.addAttribute("item", item);
        
        ImageDTO image = imagesService.getMainImage(no);
        model.addAttribute("image", image);
        System.out.println(item.toString());
//        System.out.println(image.toString());
        return "product/productDetail";
    }

  //detail image 불러오기
    @GetMapping("/imageattach")
    public void imageAttach(int no, HttpSession sesson, HttpServletResponse response) throws Exception {

    	ImageDTO images = imagesService.getDetailImage(no);
    	String filePath = null;

    	if(images.getImageAttachOname1() != null) {
    		String itemAttach = images.getImageAttachSname1();
    		filePath = "D:/MW/uploadfiles/items/" + itemAttach;

    		response.setContentType(images.getImageAttachType1());

    		String oname = images.getImageAttachOname1();
    		oname = new String(oname.getBytes("UTF-8"), "ISO-8859-1");
    		response.setHeader("Content-Disposition", "attachment; filename=\""+ oname +"\"");
    	} else {
    		filePath= "D:/MW/uploadfiles/items/defaultimage.jpg";
    		response.setContentType("image/jpg");
    	}
    	OutputStream os = response.getOutputStream();
    	InputStream is = new FileInputStream(filePath);
    	FileCopyUtils.copy(is,os);
    	os.flush();
    	os.close();
    	is.close();
    }

    // ------------------------------------------------------------------------------

  	@GetMapping(value = "cart2") // 연결 header에서 지선 추가
  	public String cart2(HttpSession session) {
  		session.removeAttribute("orderItemLists");
  		//status가 cart인 거 가져옴
  		List<OrderItemsDTO> orderItemLists = orderService.getItemCart();
  		session.setAttribute("orderItemLists", orderItemLists);
  		logger.info("실행 : product/cart2");
  		return "product/cart";
  	}

  	@PostMapping(value = "cart")
  	public String cart(int lno, String itemsName, HttpSession session, HttpServletRequest req) {
  		// user
  		String userId = (String) session.getAttribute("userinfo");
  		UserDTO users = memberService.selectAddress(userId);

  		// delivery
  		DeliveryDTO deliveryDTO = new DeliveryDTO(users.getAddress(), DeliveryStatus.Before);
//  		deliveryService.saveDelivery(deliveryDTO);  //세이브 확인
//  		System.out.println("2. deliveryDTO : "+deliveryDTO.toString());

  		// orders
  		OrdersDTO orderDTO = new OrdersDTO();
  		orderDTO.setMembersMembersId(userId);
  		orderDTO.setDeliveryDeliveryNo(deliveryDTO.getDeliveryNo());
  		orderDTO.setStatus(OrderStatus.Cart);
//  		orderService.saveOrder(orderDTO);  //세이브 확인
//  		System.out.println("3. orderDTO : "+orderDTO.toString());

  		// items정보 가져오기 (itemsName, option, color)
  		String itemsColor = req.getParameter("itemsColor");
  		String itemsOption = req.getParameter("itemsOption");
  		Map<String, String> map = new HashMap<String, String>();
  		map.put("itemsName", itemsName);
  		map.put("itemsColor", itemsColor);
  		map.put("itemsOption", itemsOption);
  		ItemsDTO item = itemsService.selectItem(map);
//  		System.out.println("4. ItemsDTO : "+item.toString());

  		// order_items저장 items FK, count, price 받음
//  		public OrderItemsDTO(int orderItemsCount, long orderItemsPrice, int itemsItemsNo )
  		OrderItemsDTO orderItemsDTO = new OrderItemsDTO(1, item.getItemsPrice(), item.getItemsNo());
  		orderService.order(userId, deliveryDTO, orderDTO, orderItemsDTO);
//  		System.out.println("5. orderItemsDTO : "+orderItemsDTO.toString());

  		// order_items를 불러와서 orders의 status가 카트인것만 보여주기
  		// product number 받기와 추가로 넣을 때는 어떻게 할지 status=cart에 있는거
  		// status=cart에 있는거 list로 받아옴
  		List<OrderItemsDTO> orderItemLists = orderService.getItemCart();

  		session.setAttribute("orderItemLists", orderItemLists);
  		return "product/cart";
  	}

  	@GetMapping(value = "/order")
  	public String method1(HttpServletRequest request, HttpSession session, Model model) throws Exception {
//  		 List<OrderItemsDTO> result = test(request, model, session);
  		List<OrderItemsDTO> orderItemLists = new ArrayList<OrderItemsDTO>();
  		//check한 부분 확인하기
  		if (request.getParameterValues("check") != null) {

  			String[] arr = request.getParameterValues("check"); // orderItemsNo
  			for (String i : arr) {
  				int orderItemsNo = Integer.parseInt(request.getParameter("orderItemsNo" + i));
  				int ordersOrderNo = Integer.parseInt(request.getParameter("ordersOrderNo" + i));
  				int itemsItemsNo = Integer.parseInt(request.getParameter("itemsItemsNo" + i));
  				System.out.println(orderItemsNo);
  				int orderItemsCount = Integer.parseInt(request.getParameter("orderItemsCount" + i));
  				long orderItemsPrice = Long.parseLong(request.getParameter("orderItemsPrice" + i));
//  				System.out.println("count: " + orderItemsCount);
//  				System.out.println("price: " + orderItemsPrice);
  				OrderItemsDTO orderItem = new OrderItemsDTO(orderItemsNo, orderItemsCount, orderItemsPrice,
  						ordersOrderNo, itemsItemsNo);
  				orderService.updateOrder(orderItem);
//  				System.out.println(orderItem.toString());
  				
  				OrderItemsDTO ordItem = orderService.getItemOrderPK(orderItemsNo);
  				orderItemLists.add(ordItem);
  			}
  		}
  		//user의 delivery 정보 가져오기
  		String userId = (String) session.getAttribute("userinfo");
  		UserDTO users = memberService.selectAddress(userId);
  		session.setAttribute("userinform",users);
  		
  		//status가 order인거 가져오기
  		
  		session.removeAttribute("orderItemLists");
  		session.setAttribute("orderItemLists", orderItemLists);
//  		session.setAttribute("orderItemLists", result);
  		System.out.println("orderItemLists:" + orderItemLists);
  		return "redirect:/product/delivery";
  	}
  	
  	@GetMapping(value = "/delivery")
  	public String delivery() {
  		return "product/delivery";
  	}
  	
  	@PostMapping(value = "/addressUpdate")
  	public String addressUpdate(UserDTO users, AddressDTO address, HttpServletRequest request) {
  		//address받아오기
  		System.out.println("1. address: "+address);
  		users.setAddress(address);
  		
  		//orderItemsNo 받아오기
  		String[] numbers =request.getParameterValues("orderItemsNo");
  		for(String num : numbers)
  			System.out.println("2.numbers: " +num);
  		
  		//delivery address 없데이트
  		
  		Map<String, Object> map = new HashMap<String, Object>();
  		map.put("address", address);
  		for(String num : numbers) {
  			int orderItemsNo = Integer.parseInt(num);
  			map.put("orderItemsNo", orderItemsNo);
  			orderService.updateAddress(map);
  		}
  		
  		return "redirect:/product/orderForm";
  	}
  	
  	@GetMapping(value = "/orderForm")
  	public String orderForm(HttpSession session) {
  		List<OrderItemsDTO> orderItemLists = orderService.getItemOrder();
  		
  		
  		//order에서 date, delivery에서 status가져오기
  		for (OrderItemsDTO ordItem : orderItemLists) {
  			OrdersDTO order = orderService.selectByPk(ordItem.getOrdersOrderNo());
  			System.out.println(order);
  			ordItem.setOrder(order);
  			DeliveryDTO delivery = deliveryService.selectByPk(ordItem.getOrdersOrderNo());
  			System.out.println(delivery);
  			ordItem.setDelivery(delivery);
  		}
  		
  		System.out.println("orderItemLists: " + orderItemLists);
  		session.setAttribute("orderItemLists", orderItemLists);
  		return "product/order";
  	}
  	
//  	public static List<OrderItemsDTO> test(HttpServletRequest request, Model model, HttpSession session) throws Exception{
//  		if (request.getParameterValues("check") != null) {
 //
//  			String[] arr = request.getParameterValues("check"); // orderItemsNo
//  			for (String i : arr) {
//  				int orderItemsNo = Integer.parseInt(request.getParameter("orderItemsNo" + i));
//  				int ordersOrderNo = Integer.parseInt(request.getParameter("ordersOrderNo" + i));
//  				int itemsItemsNo = Integer.parseInt(request.getParameter("itemsItemsNo" + i));
//  				System.out.println(orderItemsNo);
//  				int orderItemsCount = Integer.parseInt(request.getParameter("orderItemsCount" + i));
//  				long orderItemsPrice = Long.parseLong(request.getParameter("orderItemsPrice" + i));
//  				System.out.println("count: " + orderItemsCount);
//  				System.out.println("price: " + orderItemsPrice);
//  				OrderItemsDTO orderItem = new OrderItemsDTO(orderItemsNo, orderItemsCount, orderItemsPrice,
//  						ordersOrderNo, itemsItemsNo);
//  				orderService.updateOrder(orderItem);
//  				System.out.println(orderItem.toString());
//  			}
//  		}
//  		List<OrderItemsDTO> orderItemLists = orderService.getItemOrder();
//  		
//  		
//  		//order에서 date, delivery에서 status가져오기
//  		for (OrderItemsDTO ordItem : orderItemLists) {
//  			OrdersDTO order = orderService.selectByPk(ordItem.getOrdersOrderNo());
//  			System.out.println(order);
//  			ordItem.setOrder(order);
//  			DeliveryDTO delivery = deliveryService.selectByPk(ordItem.getOrdersOrderNo());
//  			System.out.println(delivery);
//  			ordItem.setDelivery(delivery);
//  		}
//  		System.out.println("orderItemLists: " + orderItemLists);
//  		session.setAttribute("orderItemLists", orderItemLists);
//  		return orderItemLists;
//  		
//  	}
  	@GetMapping(value = "/addressread")
  	public String addressRead(int deliveryNo, Model model) {
  		DeliveryDTO delivery = deliveryService.selectByNo(deliveryNo);
  		System.out.println("delivery: "+delivery);
 		model.addAttribute("delivery", delivery);
  		return "product/address";
  	}
  }
