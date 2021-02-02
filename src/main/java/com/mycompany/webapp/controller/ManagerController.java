package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.ImageDTO;
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
    
    //메인 내용 저장
    @PostMapping("/write")
    public String write(ItemsDTO dto) throws IllegalStateException, IOException {
		System.out.println(dto.toString());
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
    
    //상세 내용 작성페이지 불러오기
    @GetMapping("/writeDetail")
    public String toDetail() {
    	logger.info("detail 작성 페이지 이동");
        return "manager/writeDetail";
    }
    

    @PostMapping("/writeDetail")
    public String writeDetail(ImageDTO dto) throws IllegalStateException, IOException {
    	ItemsDTO items = new ItemsDTO();
		System.out.println(dto.toString());
		MultipartFile mf1 = dto.getImageAttach1();
		MultipartFile mf2 = dto.getImageAttach2();
		MultipartFile mf3 = dto.getImageAttach3();

		if(!mf1.isEmpty() && !mf2.isEmpty() && !mf3.isEmpty()){
			dto.setImageAttachOname1((mf1.getOriginalFilename()));
			dto.setImageAttachOname2((mf2.getOriginalFilename()));
			dto.setImageAttachOname3((mf3.getOriginalFilename()));
			String saveName1 = new Date().getTime() + "-" +mf1.getOriginalFilename();
			String saveName2 = new Date().getTime() + "-" +mf2.getOriginalFilename();
			String saveName3 = new Date().getTime() + "-" +mf3.getOriginalFilename();
			dto.setImageAttachSname1(saveName1);
			dto.setImageAttachSname2(saveName2);
			dto.setImageAttachSname3(saveName3);
			dto.setImageAttachType1(mf1.getContentType());
			dto.setImageAttachType2(mf2.getContentType());
			dto.setImageAttachType3(mf3.getContentType());
			//파일 저장
			File saveFile1 = new File("D:/MW/uploadfiles/product/" + saveName1);
			File saveFile2 = new File("D:/MW/uploadfiles/product/" + saveName2);
			File saveFile3 = new File("D:/MW/uploadfiles/product/" + saveName3);
			mf1.transferTo(saveFile1);
			mf2.transferTo(saveFile2);
			mf3.transferTo(saveFile3);
		}
		int assNum = itemsService.selectSeq();
		System.out.println(assNum);
		dto.setItemsItemsNo(assNum);
		System.out.println("222");
    	int num = imagesService.saveImageAndDetail(dto);
		System.out.println("num : "+num);

    	return "redirect:/manager/productList";
    }


    // 상세 이미지 업로드 시 미리보기
//    @GetMapping("/imagepreview") //메소드는 get방식으로 가져오기
//	public String imagePr(Model model) {
//		String saveDirPath = "D:/MW/uploadfiles/write";
//		File dir = new File(saveDirPath);
//		String [] fileNames = dir.list(); // 폴더 안에 있는 모든 파일 명을 배열로 내놓음
//		model.addAttribute("fileNames",fileNames);
//
//		return "manager/imagepreview";
//	}
    
    // 제품 목록으로 돌아가기
    @GetMapping("/productList")
    public String productList() {
    	return "product/productList";
    }

    // 수정페이지 이동: 입력된 제품 정보를 수정페이지에 불러오기
    @GetMapping("/update")  //hoon
    public String updateform(int no, Model model){
        logger.info("수정 페이지로 이동하기");
        ItemsDTO items = itemsService.getItemJoin(no);
        ImageDTO image = new ImageDTO();
        model.addAttribute("items", items);
        model.addAttribute("image", image);
        logger.info(items.toString());
        return "manager/update";
    }
    
    // 수정페이지의 이미지 불러오기
    @GetMapping("/itemsattach")
    public void itemAttach(int no, HttpSession sesson, HttpServletResponse response) throws Exception {
    	
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
    
    // 메인 업데이트 저장 후 다음 페이지로 이동
    @PostMapping("/updatedetail")
    public String itemupdate(ItemsDTO dto, ImageDTO image, Model model) throws IllegalStateException, IOException{
    	
    	//업데이트한 사진 저장
//    	MultipartFile mf = dto.getItemsAttach();
//    	if(!mf.isEmpty()) {
//			dto.setItemsAttachOname(mf.getOriginalFilename());
//			String saveName = new Date().getTime() + "-" + mf.getOriginalFilename();
//			dto.setItemsAttachSname(saveName);
//			dto.setItemsAttachtype(mf.getContentType());
//			File saveFile = new File("D:/MW/uploadfiles/items/" + saveName);
//			mf.transferTo(saveFile);
//    	}
    	itemsService.updateItem(dto);
    	logger.info(dto.toString());
    	logger.info("세부 수정페이지로 이동");
//    	int num = dto.getItemsItemsNo();
    	String str ="redirect:/manager/toDetail?no=" ;
    	return str;
    }
    
    //상세 업데이트 페이지 불러오기
    @GetMapping("/toDetail")
    public String updateDetail(int no, Model model, ItemsDTO itemsDTO) {
    	logger.info("detail 수정 페이지로 이동");
    	System.out.println("detail  No:" + no);
    	ImageDTO image = imagesService.getMainImage(no);
    	System.out.println(image.toString());
    	model.addAttribute("detail",image);
    	return "manager/updateDetail";
    }
    
//    //detail 이미지 불러오기
//    @GetMapping("/imageattach")
//    public void imageAttach(int no, HttpSession sesson, HttpServletResponse response) throws Exception {
//    	System.out.println("int no:" + no);
//    	ImageDTO images = imagesService.getDetailImage(no);
//    	String filePath = null;
//    	if(images.getImage1AttachOname() != null) {
//    		String itemAttach = images.getImage1AttachSname();
//    		filePath = "D:/MW/uploadfiles/items/" + itemAttach;
//
//    		response.setContentType(images.getImage1Attachtype());
//
//    		String oname = images.getImage1AttachOname();
//    		oname = new String(oname.getBytes("UTF-8"), "ISO-8859-1");
//    		response.setHeader("Content-Disposition", "attachment; filename=\""+ oname +"\"");
//    	} else {
//    		filePath= "D:/MW/uploadfiles/items/defaultimage.jpg";
//    		response.setContentType("image/jpg");
//    	}
//    	OutputStream os = response.getOutputStream();
//    	InputStream is = new FileInputStream(filePath);
//    	FileCopyUtils.copy(is,os);
//    	os.flush();
//    	os.close();
//    	is.close();
//    }
    
    
    //상세 업데이트 내용 저장
    @PostMapping("/saveupdate")
    public String saveUpdate(ImageDTO image) {
    	imagesService.updateItem(image);
    	return "redirect:/manager/productList";
    }
    
    //수정 취소
    @GetMapping("cancelupdate")
    public String cancel() {
    	logger.info("변경 취소");
    	return "product/productList";
    }

    
    //제품 삭제
    @PostMapping("/delete")
    public String delete(int no) {
    	itemsService.delete(no);
    	return "redirect:/manager/productList";
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
}