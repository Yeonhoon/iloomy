package com.mycompany.webapp.repository;

import com.mycompany.webapp.dto.NoticeDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class NoticeRepo {

    @Resource
    private SqlSessionTemplate sst;

    public int insert(NoticeDTO notice) {
        int tmp = sst.insert("notices.insert",notice);
        return tmp;
    }

    public List<NoticeDTO> getNoticeList() {
        List<NoticeDTO> list = sst.selectList("notices.selectAll");
        System.out.println("list : "+ list);
        return list;
    }
}
