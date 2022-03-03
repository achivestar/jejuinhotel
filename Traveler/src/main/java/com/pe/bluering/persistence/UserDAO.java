package com.pe.bluering.persistence;

import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.UserVO;

public interface UserDAO {

	public UserVO login(LoginDTO dto);
}
