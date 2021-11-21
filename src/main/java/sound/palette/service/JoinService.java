package sound.palette.service;

import java.util.List;
import java.util.Map;

public interface JoinService {

	public void insertMember(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> emailCheck(Map<String, Object> map) throws Exception;
	
//	Map<String, Object> selectMember(Map<String, Object> map) throws Exception;
//
//	void updateMember(Map<String, Object> map) throws Exception;
//
//	void deleteMember(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> nickCheck(Map<String, Object> map) throws Exception;

}
