package com.pe.bluering.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.UserVO;
import com.pe.bluering.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;
	
	@Override
	public UserVO login(LoginDTO dto) {
		return dao.login(dto);
	}

}
