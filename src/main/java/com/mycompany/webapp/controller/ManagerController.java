package com.mycompany.webapp.controller;

import java.io.File;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.service.BoardService;

@Controller
@RequestMapping("/manager")
public class ManagerController {

    private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);


    //글 작성 페이지로 이동
    @GetMapping("/write")
    public String writeForm(Model model) {

    	return "manager/writeform";
    }

    @PostMapping("/write")
    public String write(Model model, HttpServletRequest req) {
    	String id = req.getParameter("uproduct");
    	System.out.println(id);
//    	ItemsDTO dto = new ItemsDTO((int)0,"품명","브랜드",111111,"제품설명","빨강","폭넓이","부연설명","사진","ISBN","제조사","원산지");
//    	dto.setpName("품명");
//    	dto.setpPrice(11111111);
//    	dto.setpModel("모델명");
//    	dto.setpCompany("브랜드");
//    	dto.setpManufacture("제조사");
//	    dto.setpOrigin("원산지");
//    	model.addAttribute("BestSeller", dto);
    	return "redirect:/manager/productLists ";
    }

    // 제품 목록으로 돌아가기
    @GetMapping("/productList")
    public String productList() {
    	return "product/productList";
    }

    //수정 페이지로 이동
    @GetMapping("/update")  //hoon
    public String update(){
        logger.info("수정 페이지로 이동하기");
        return "manager/update";
    }

    //제품 삭제
    @Resource
    private BoardService boardService;

    @PostMapping("/delete")
    public String delete(int bno) {
    	boardService.delete(bno);
    	return "redirect:/product/productList";

    }


    //기본 정보 수정
    @GetMapping("mainInfoDto")
    public String mainInfoDto(Model model) {
    	ItemsDTO dto = new ItemsDTO();


    	// 컬러, 상세제품 수정 필요
    	model.addAttribute("dto",dto);
    	logger.info("수정창 불러오기 성공");
    	logger.info(dto.toString());
    	return "manager/updateMainInfo";
    }

    //상세정보수정
    @GetMapping("/detailText")
    public String detailInfo(Model model) {

    	ItemsDTO dto = new ItemsDTO();
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


    @GetMapping(value = "이미지 첨부")  //hyemin  , no parameter
    public <UpdatePhotoDto, ProductDto> String fileUpload(ProductDto user, MultipartFile uphoto) {


			String originalFileName = uphoto.getOriginalFilename();
			String contentType = uphoto.getContentType();
			long size = uphoto.getSize();

			logger.info("originalFileName: " + originalFileName);
			logger.info("contentType: " + contentType);
			logger.info("size: " + size);


			String saveDirPath = "D:/MyWorkspace/uploadfiles/";

			String fileName = new Date().getTime() + "-" + originalFileName;
			String filePath = saveDirPath + fileName;
			File file = new File(filePath);
			try {
				uphoto.transferTo(file);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		return "redirect:/manager/writeform2";

	}
			return filePath;

    }


    @GetMapping(value = "상품등록완료")  //hymin  , get parameter(number of imagelist), fulfill random
    public String update(int random){
        logger.info(" 실행 : /manager/update/product");
        return "manager/writeform2";
    }
}