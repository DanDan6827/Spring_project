package com.ict.db;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public MVO getLogin(MVO mvo2) {
		MVO mvo = new MVO();
		mvo = sqlSessionTemplate.selectOne("login", mvo2);
		return mvo;
	}

	public MVO getSearch(String email, String name) throws Exception{
		MVO mvo = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("name", name);
		mvo = sqlSessionTemplate.selectOne("search", map);
		System.out.println("dao :" + mvo.getId());
		return mvo;
	}

	public int getSignUp(MVO mvo) {
		int result = 0;
		result = sqlSessionTemplate.insert("sign", mvo);

		return result;
	}

	public MVO getSame(String id) throws Exception {
		MVO mvo = null;
		mvo = sqlSessionTemplate.selectOne("sameid",id);
		return mvo;
	}

}
