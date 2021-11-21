package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("playListDAO")
public class PlayListDAO extends AbstractDAO {
	
	public void insertPlayList(Map<String, Object> map) throws Exception {
		insert("palette.insertPlayList", map);
	}
	
	public List<Map<String, Object>> selectPlayLists(Map<String, Object> map) throws Exception {
		return selectList("palette.selectPlayLists", map);
	}
	
	public Map<String, Object> selectPlayList(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("palette.selectPlayList", map);
	}
	
	public List<Map<String, Object>> searchMusicArt(Map<String, Object> map) throws Exception {
		return selectList("palette.searchMusicArt", map);
	}
	
	public List<Map<String, Object>> searchMusicTitle(Map<String, Object> map) throws Exception {
		return selectList("palette.searchMusicTitle", map);
	}
	
	public void insertPIM(Map<String, Object> map) throws Exception {
		insert("palette.insertPIM", map);
	}
	
	public List<Map<String, Object>> selectPIMs(Map<String, Object> map) throws Exception {
		return selectList("palette.selectPIMs", map);
	}

}
