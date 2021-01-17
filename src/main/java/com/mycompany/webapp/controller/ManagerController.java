package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.UpdateDto;
import com.mycompany.webapp.dto.UpdatePhotoDto;

@Controller
@RequestMapping("/manager")
public class ManagerController {

    private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);
    
    @PostMapping(value = "enroll/product")  //hyemin, DTO
    public String enroll(){
        logger.info("실행 : /manager/enroll/product");
        return "redirect:/manager/enroll/next";
    }
    
    //수정 페이지로 이동
    @GetMapping("update")  //hoon
    public String update(){
        logger.info("실행 : manager/update/");
        return "manager/update";
    }
    
    //기본 정보 수정
    @GetMapping("mainInfoDto")
    public String mainInfoDto(Model model) {
    	UpdateDto dto = new UpdateDto();
    	dto.setNum("1");
    	dto.setBrand("쿠시노");
    	dto.setProductName("저상형 패밀리침대(인조가죽)");
    	dto.setPrice(1009000);
    	dto.setDeliveryDate("약 10일");
    	dto.setDeliveryFee("10만원");
    	dto.setDeliveryMethod("설치배송");
    	dto.setProductCode("HB722501");
    	dto.setColor("");
    	
    	// 컬러, 상세제품 수정 필요
    	model.addAttribute("dto",dto);
    	logger.info(dto.getNum());
    	logger.info(dto.getBrand());
    	logger.info(dto.getProductName());
    	logger.info(dto.getDeliveryDate());
    	logger.info(dto.getDeliveryFee());
    	logger.info(dto.getDeliveryMethod());
    	logger.info(dto.getProductCode());
    	logger.info("수정창 불러오기 성공");
    	return "manager/updateMainInfo";
    }
    
    //상세정보수정
    @GetMapping("/detailText")
    public String detailInfo(Model model) {
    	   	
    		UpdateDto dto = new UpdateDto();
    		dto.setDetail("쿠시노 저상형 패밀리 침대(인조가죽) 신혼에서부터 자녀의 성장에 따라 다양하게 사용할 수 있는 쿠시노 시리즈입니다. 싱글과 퀸 침대로 구성되어 있으며, 공간이나 필요에 따라 가드나 액세서리를 추가해 우리 가족만의 패밀리 침대를 완성해보세요.");
    		model.addAttribute("dto", dto);
    		logger.info("상세텍스트 불러오기 성공");

    	return "manager/updateDetailText";
    }
    
//    //사진 업로드 및 저장
//    @PostMapping("/photoupload")
//    public String fileUpload(UpdatePhotoDto user) {
//    	MultipartFile uphoto = user.getUphoto();
//    	if(!uphoto.isEmpty()) {
//			//원래 경로 설정해주기
//    		String originFilename = uphoto.getOriginalFilename();
//			String fileType = uphoto.getContentType();
//			
//			//파일저장경로 설정
//			String saveDir = "D:/MW/uploadfiles/";
//			String fileName = new Date().getTime() + "-" +  originFilename;// 유일한 이름으로 바꿔줘야 함 방법1. 날짜 이용법, 2. 시간 ㅣ이용법
//			String filePath = saveDir + fileName;
//			File file = new File(filePath);
//			
//			logger.info("파일타입:" + fileType);
//
//			try {
//				uphoto.transferTo(file);
//			} catch (Exception e) {
//				return "redirect:/manager/update";
//			}
//    	}
//    	return "redirect:/manager/update";
//    }
//    
    //첨부한 사진리스트 보여주기
    @GetMapping("/photolist")
    public String photoList(Model model) {
    	String saveDir = "D:/MW/uploadfiles/";
    	File file = new File(saveDir);
    	String[] fileNames = file.list();
    	model.addAttribute("fileNames",fileNames);
    	
    	return "manager/updatePhotolist";
    }
    
    //사진 다운로드
    
    
    //변경내용 저장
    @GetMapping(value = "saveupdate")    //hoon  , no parameter
    public String save(){
        logger.info("실행 : 변경내용을 저장하였습니다.");
        return "product/productList";//product/productList.jsp 연결
    }
    
    //수정 취소
    @GetMapping("cancelupdate")
    public String cancel() {
    	logger.info("변경 취소");
    	return "product/productList";
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
