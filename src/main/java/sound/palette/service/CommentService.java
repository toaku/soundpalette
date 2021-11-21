package sound.palette.service;

import java.util.List;
import java.util.Map;

public interface CommentService {
	
	List<Map<String, Object>> selectCMTs(Map<String, Object> map) throws Exception;
	
	void insertCMT(Map<String, Object> map) throws Exception;
	
	void deleteCMT(Map<String, Object> map) throws Exception;
	
	//신고하기
	void insertCmtRep(Map<String, Object> map) throws Exception;

}
