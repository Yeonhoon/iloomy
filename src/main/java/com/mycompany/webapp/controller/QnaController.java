package com.mycompany.webapp.controller;

import com.mycompany.webapp.dto.QnADTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@Controller
@RequestMapping("QnA")
public class QnaController {

    private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

    @GetMapping("list")
    public String list(HttpServletRequest req){
        Date date = new Date();
        QnADTO[] qnADTOS = new QnADTO[5];
        qnADTOS[0] = new QnADTO(0,"0번째","0번쨰내용","admin",date);
        qnADTOS[1] = new QnADTO(1,"1번째","1번쨰내용","admin",date);
        qnADTOS[2] = new QnADTO(2,"2번째","2번쨰내용","admin",date);
        qnADTOS[3] = new QnADTO(3,"3번째","3번쨰내용","admin",date);
        qnADTOS[4] = new QnADTO(4,"4번째","4번쨰내용","admin",date);
        ArrayList<QnADTO> list = new ArrayList<>();
        for(int i=0; i<qnADTOS.length; i++){
            list.add(qnADTOS[i]);
        }
        req.setAttribute("list", list);
        return "qna/list";
    }

    @GetMapping("detail")
    public String detail(HttpServletRequest req, @RequestParam("no")int no){
        System.out.println(no);
        Date date = new Date();
        QnADTO[] qnADTOS = new QnADTO[5];
        qnADTOS[0] = new QnADTO(0,"0번째","0번쨰내용","admin",date);
        qnADTOS[1] = new QnADTO(1,"1번째","1번쨰내용","admin",date);
        qnADTOS[2] = new QnADTO(2,"2번째","2번쨰내용","admin",date);
        qnADTOS[3] = new QnADTO(3,"3번째","3번쨰내용","admin",date);
        qnADTOS[4] = new QnADTO(4,"4번째","4번쨰내용","admin",date);
        req.setAttribute("result", qnADTOS[no]);
        return "qna/detail";
    }



}
