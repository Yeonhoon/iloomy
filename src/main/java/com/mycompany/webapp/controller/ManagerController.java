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
    
    
    @GetMapping("update")  //hoon
    public String update(){
        logger.info("실행 : manager/update/");
        return "manager/update";
    }
    
    @GetMapping("mainInfoDto")
    public String mainInfoDto(Model model) {
    	UpdateDto dto = new UpdateDto();
    	dto.setNum(1);
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
    	logger.info("수정창 불러오기 성공");
    	return "manager/updateMainInfo";
    }
    
    //사진 업로드 및 저장
    @GetMapping("uploadphoto")
    public String uploadPhoto(UpdatePhotoDto dto) {
    	MultipartFile mpf = dto.getPhoto();
    	if(!mpf.isEmpty()) {
			//원래 경로 설정해주기
    		String originFilename = mpf.getOriginalFilename();
			String fileType = mpf.getContentType();
    		
			//파일저장경로 설정
			String saveDir = "D:/MW/jyh/web/uploadedFiles";
			String newFilename = new Date().getTime() + "_" + originFilename;
			String filePath = saveDir + newFilename;
			File file = new File(filePath);
			
			try {
				mpf.transferTo(file);
				return "return:/manager/update";
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
    		
    	}
    	return "return:/manager/update";
    	
    }
    
    @GetMapping("photolist")
    public String photoList(Model model) {
    	String saveDir = "D:/MW/jyh/web/uploadedFiles";
    	File file = new File(saveDir);
    	String[] fileList = file.list();
    	model.addAttribute("fileList",fileList);
    	logger.info("리스트 불러오기");
    	return "manager/updatePhotolist";
    }
    
    
    
    
    @GetMapping(value = "saveupdate")    //hoon  , no parameter
    public String back(){
        logger.info("실행 : /manager/enroll/next");
        return "product/productList";//product/productList.jsp 연결
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
