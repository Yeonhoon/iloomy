package com.mycompany.webapp.service;

import com.mycompany.webapp.dto.NoticeDTO;
import com.mycompany.webapp.repository.NoticeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService {

    @Autowired
    NoticeRepo nRepo;

    public void insert(NoticeDTO notice) {
        int tmp = nRepo.insert(notice);
    }

    public List<NoticeDTO> getNoticeList() {
        List<NoticeDTO> list = nRepo.getNoticeList();
        return list;
    }

    public void delete(int no) {
        int tmp = nRepo.delete(no);
    }

    public NoticeDTO getImage(int no) {
        NoticeDTO notice = nRepo.selectByNo(no);
        return notice;
    }
}
