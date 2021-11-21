package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MypageService {
	
	public Map<String, Object> userDetail(Map<String, Object> map) throws Exception;
	
	//내가 쓴글
	List<Map<String, Object>> selectMyMRB(Map<String, Object> map) throws Exception;
	
	//내가 좋아요 한 글
	List<Map<String, Object>> selectMyhit(Map<String, Object> map) throws Exception;

	void userInfoUpdate(Map<String, Object> map) throws Exception;

	void deleteMember(Map<String, Object> map);
	
	void userImage(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	List<Map<String, Object>> nickCheck(Map<String, Object> map) throws Exception;

	Map<String, Object> selectMemberIMG(Map<String, Object> map) throws Exception;
	
	// 좋아요
	Map<String, Object> doHIT(Map<String, Object> map) throws Exception;


}
