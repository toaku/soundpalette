package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import sound.palette.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginDAO")
	private LoginDAO loginDAO;

	@Override
	public Map<String, Object> IdCheck(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}
	
	@Override
	public Map<String, Object> PwCheck(Map<String, Object> map) throws Exception {
		return loginDAO.selectPw(map);
	}
	
	@Override
	public Map<String, Object> SelectInfo(Map<String, Object> map) throws Exception {
		return loginDAO.selectInfo(map);
	}

	@Override
	public List<Map<String, Object>> findId(Map<String, Object> map) throws Exception {
		return loginDAO.findId(map);
	}

	@Override
	public List<Map<String, Object>> findPw(Map<String, Object> map) throws Exception {
		return loginDAO.findPw(map);	
	}

}
