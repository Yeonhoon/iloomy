package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.ItemsImagesDTO;
import com.mycompany.webapp.service.ImagesService;
import com.mycompany.webapp.service.ItemsService;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Resource private ItemsService itemsService;
	@Resource private ImagesService imagesService;

	
    private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);


    //글 작성 페이지로 이동
    @GetMapping("/write")
    public String writeForm(Model model) {

    	return "manager/writeform";
    }

    //이미지 만들기
    
    //작성 글 저장
    @PostMapping("/write")
    public String write(HttpSession session, ItemsDTO dto) throws IllegalStateException, IOException {
    	
    	MultipartFile mf = dto.getItemsAttach();
    	// 사진 저장
    	if(!mf.isEmpty()) {
    		dto.setItemsAttachOname(mf.getOriginalFilename());
    		String saveName = new Date().getTime() + "-" + mf.getOriginalFilename();
    		dto.setItemsAttachSname(saveName);
    		dto.setItemsAttachtype(mf.getContentType());
    		File saveFile = new File("D:/MW/uploadfiles/items/" + saveName);
    		mf.transferTo(saveFile);
    	}
    	System.out.println(dto.toString());
    	itemsService.saveBoard(dto);
    	return "redirect:/manager/writeDetail";
    }
    
    //상세 내용 작성페이지로 이동
    @GetMapping("/writeDetail")
    public String toDetail() {
//        logger.info(dto.getItemsimages().getDetail1());
//        logger.info(dto.getItemsimages().getDetail2());
//        logger.info(dto.getItemsimages().getDetail3());

        return "manager/writeDetail";
    }
    
    //상세내용 저장
    @PostMapping("/writeDetail")
    public String writeDetail(HttpSession session, ItemsImagesDTO dto) throws IllegalStateException, IOException {
    	ItemsDTO items = new ItemsDTO();
//    	String detail1 = dto.getDetail1();
//    	String oname = dto.getImage1AttachOname();
//    	String sname = dto.getImage1AttachSname();
//    	String type = dto.getImage1Attachtype();
    	
    	MultipartFile mf1 = dto.getImagesAttach();
    	// 사진 저장
    	if(!mf1.isEmpty()) {
    		dto.setImage1AttachOname(mf1.getOriginalFilename());
    		String saveName = new Date().getTime() + "-" + mf1.getOriginalFilename();
    		dto.setImage1AttachSname(saveName);
    		dto.setImage1Attachtype(mf1.getContentType());
    		File saveFile = new File("D:/MW/uploadfiles/items/" + saveName);
    		mf1.transferTo(saveFile);
    	}
    	dto.setItemsItemsNo(items.getItemsNo());
    	System.out.println(dto.toString());
		
    	imagesService.saveImages(dto);
    	
    	return "redirect:/product/productList";
    }
    

    // 상세 이미지 업로드 시 미리보기
    @GetMapping("/imagepreview") //메소드는 get방식으로 가져오기
	public String imagePr(Model model) {
		String saveDirPath = "D:/MW/uploadfiles/write";
		File dir = new File(saveDirPath);
		String [] fileNames = dir.list(); // 폴더 안에 있는 모든 파일 명을 배열로 내놓음
		model.addAttribute("fileNames",fileNames);
		
		return "manager/imagepreview";
	}
    
    // 제품 목록으로 돌아가기
    @GetMapping("/productList")
    public String productList() {
    	return "product/productList";
    }

    // 수정페이지 이동: 입력된 제품 정보를 수정페이지에 불러오기
    @GetMapping("/itemupdate")  //hoon
    public String updateform(int no, Model model){
        logger.info("수정 페이지로 이동하기");
        ItemsDTO items = itemsService.getItem(no);
        model.addAttribute("items", items);
        return "manager/update";
    }

    
    // 수정 내용 저장
    @PostMapping("/itemupdate")    //hoon  , no parameter
    public String itemupdate(ItemsDTO dto){
    	itemsService.updateItem(dto);
    	logger.info("update success");
    	return "redirect:/manager/productList";//product/productList.jsp 연결
    }
    
    //수정 취소
    @GetMapping("cancelupdate")
    public String cancel() {
    	logger.info("변경 취소");
    	return "product/productList";
    }

    
    //제품 삭제

    @PostMapping("/delete")
    public String delete(int bno) {
    	itemsService.delete(bno);
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