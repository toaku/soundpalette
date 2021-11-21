package sound.palette.service;

import java.util.List;
import java.util.Map;

public interface LoginService {

	public Map<String, Object> IdCheck(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> PwCheck(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> SelectInfo(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> findId(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> findPw(Map<String, Object> map) throws Exception;
	
}
