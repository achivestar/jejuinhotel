package com.pe.bluering.service;

import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.UserVO;

public interface UserService {

	public UserVO login(LoginDTO dto);
}
