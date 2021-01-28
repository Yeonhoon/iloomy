package com.mycompany.webapp.repository;

import com.mycompany.webapp.dto.NoticeDTO;
import com.mycompany.webapp.dto.PagerDTO;
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
        return list;
    }
    public List<NoticeDTO> getNoticeList(PagerDTO pager) {
        List<NoticeDTO> list = sst.selectList("notices.selectByPage",pager);
        return list;
    }

    public int delete(int no) {
        int tmp = sst.delete("notices.delete",no);
        return tmp;
    }

    public NoticeDTO selectByNo(int no) {
        NoticeDTO notice = sst.selectOne("notices.selectByNo",no);
        return notice;
    }

    public int countAll() {
        int tmp = sst.selectOne("notices.countAll");
        return tmp;
    }
}
