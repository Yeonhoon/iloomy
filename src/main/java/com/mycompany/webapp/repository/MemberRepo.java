package com.mycompany.webapp.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.UserDTO;

@Repository
public class MemberRepo {

<<<<<<< HEAD

=======
	@Resource
	private SqlSessionTemplate sst;
	
	public int regist(UserDTO user) {
		int tmp = sst.insert("members.regist",user);
		return tmp;
	}
>>>>>>> branch 'master' of https://github.com/Yeonhoon/iloomy.git

}
