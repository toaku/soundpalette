package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {

	// 게시판 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMRBs(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("palette.selectMRBs", map);
	}

	// 글쓰기
	public void insertMRB(Map<String, Object> map) throws Exception {
		insert("palette.insertMRB", map);
	}

	// 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectDetailMRB(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("palette.selectDetailMRB", map);
	}

	// 조회수 증가
	public void updateMRBcnt(Map<String, Object> map) throws Exception {
		update("palette.updateMRBcnt", map);
	}

	// 삭제하기
	public void deleteMRB(Map<String, Object> map) throws Exception {
		update("palette.deleteMRB", map);
	}

	// 수정하기
	public void updateMRB(Map<String, Object> map) throws Exception {
		update("palette.updateMRB", map);
	}

	// 좋아요 상태 변경
	public void updateHIT(Map<String, Object> map) throws Exception {
		update("palette.updateHIT", map);
	}

	// 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectHIT(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("palette.selectHIT", map);
	}

	// 글쓰기
	public void insertHIT(Map<String, Object> map) throws Exception {
		insert("palette.insertHIT", map);
	}
	
	//신고하기
	public void insertMrbRep(Map<String, Object> map) throws Exception {
		insert("palette.insertREP", map);
	}
	
	//음악 정보 넣기
	public void insertMusic(Map<String, Object> map) throws Exception {
		insert("palette.insertMusic", map);
	}

}
