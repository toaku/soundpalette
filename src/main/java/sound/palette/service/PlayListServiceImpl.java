package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sound.palette.dao.PlayListDAO;

@Service("playListService")
public class PlayListServiceImpl implements PlayListService {
	
	@Resource(name="playListDAO")
	private PlayListDAO playListDAO;

	@Override
	public void insertPlayList(Map<String, Object> map) throws Exception {
		playListDAO.insertPlayList(map);
	}

	@Override
	public List<Map<String, Object>> selectPlayLists(Map<String, Object> map) throws Exception {
		return playListDAO.selectPlayLists(map);
	}

	@Override
	public Map<String, Object> selectPlayList(Map<String, Object> map) throws Exception {
		return playListDAO.selectPlayList(map);
	}

	@Override
	public List<Map<String, Object>> searchMusic(Map<String, Object> map) throws Exception {
		if(map.get("selected").equals("제목")) {
			return playListDAO.searchMusicTitle(map);
		} else {
			return playListDAO.searchMusicArt(map);
		}
	}

	@Override
	public void insertPIM(Map<String, Object> map) throws Exception {
		playListDAO.insertPIM(map);
	}
	
	@Override
	public List<Map<String, Object>> selectPIMs(Map<String, Object> map) throws Exception {
		return playListDAO.selectPIMs(map);
	}
	
}
