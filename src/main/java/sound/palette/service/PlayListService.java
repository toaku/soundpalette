package sound.palette.service;

import java.util.List;
import java.util.Map;

public interface PlayListService {
	
	void insertPlayList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectPlayLists(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectPlayList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> searchMusic(Map<String, Object> map) throws Exception;
	
	void insertPIM(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectPIMs(Map<String, Object> map) throws Exception;

}
