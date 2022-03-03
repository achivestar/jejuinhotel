package com.pe.bluering.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.userMapper";
	@Override
	public UserVO login(LoginDTO dto) {
		
		return sql.selectOne(namespace+".login",dto);
	}

}
