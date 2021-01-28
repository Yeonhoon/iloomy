package com.mycompany.webapp.controller;

import com.mycompany.webapp.dto.NoticeDTO;
import com.mycompany.webapp.service.NoticeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("Notice")
public class NoticeController {

    private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

    @Autowired
    NoticeService nService;

    @GetMapping("list")
    public String list(Model model) {
        System.out.println("list");
        List<NoticeDTO> list = nService.getNoticeList();
        System.out.println(list.get(0).toString());
        model.addAttribute("list", list);
        return "notice/list";
    }

    @GetMapping("list2")
    public String list2() {
        return "notice/list2";
    }

    @GetMapping("index")
    public String index() {
        return "notice/index";
    }

    @GetMapping("detail")
    public String detail(HttpServletRequest req, @RequestParam("no") int no) {
        System.out.println(no);
        Date date = new Date();
        NoticeDTO[] qnADTOS = new NoticeDTO[5];
//        qnADTOS[0] = new NoticeDTO(0,"0번째","0번째내용","admin",date);
//        qnADTOS[1] = new NoticeDTO(1,"1번째","1번째내용","admin",date);
//        qnADTOS[2] = new NoticeDTO(2,"2번째","2번째내용","admin",date);
//        qnADTOS[3] = new NoticeDTO(3,"3번째","3번째내용","admin",date);
//        qnADTOS[4] = new NoticeDTO(4,"4번째","4번째내용","admin",date);
        req.setAttribute("result", qnADTOS[no]);
        return "notice/detail";
    }

    @GetMapping("board/new")
    public String board() {
        return "notice/write";
    }

    @PostMapping("board/new")
    public String insert(@ModelAttribute NoticeDTO notice) throws IOException {
        MultipartFile mf = notice.getNoticeAttach();
        if(!mf.isEmpty()) {
            notice.setNoticeAttachOname((mf.getOriginalFilename()));
            String saveName = new Date().getTime() + "-" +mf.getOriginalFilename();
            notice.setNoticeAttachSname(saveName);
            notice.setNoticeAttachType(mf.getContentType());
            //파일 저장
            File saveFile = new File("D:/MyWorkPlace/uploadfiles/notice/" + saveName);
            mf.transferTo(saveFile);
        }
        nService.insert(notice);
        System.out.println(notice.toString());
        return "redirect:/Notice/index";
    }
    @GetMapping("delete")
    public String delete(int no){
        System.out.println(no);
        nService.delete(no);
        return "redirect:/Notice/index";
    }

    @GetMapping(value = "/noticeAttach")
    public void noticeAttach(int no, HttpSession sesson, HttpServletResponse response) throws Exception {

        NoticeDTO notice = nService.getImage(no);
        String filePath = null;


        String noticeAttach = notice.getNoticeAttachSname();
        filePath = "D:/MyWorkPlace/uploadfiles/notice/" + noticeAttach;

        response.setContentType(notice.getNoticeAttachType());

        String oname = notice.getNoticeAttachOname();
        oname = new String(oname.getBytes("UTF-8"), "ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment; filename=\""+ oname +"\"");

        OutputStream os = response.getOutputStream();
        InputStream is = new FileInputStream(filePath);
        FileCopyUtils.copy(is,os);
        os.flush();
        os.close();
        is.close();
    }


}
