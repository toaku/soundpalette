package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("commentDAO")
public class CommentDAO extends AbstractDAO {

	// 댓글보기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCMTs(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("palette.selectCMTs", map);
	}

	// 댓글 쓰기
	public void insertCMT(Map<String, Object> map) throws Exception {
		insert("palette.insertCMT", map);
	}

	// 댓글 삭제
	public void deleteCMT(Map<String, Object> map) throws Exception {
		update("palette.deleteCMT", map);
	}
	
	//신고하기
	public void insertCmtRep(Map<String, Object> map) throws Exception {
		insert("palette.insertREP", map);
	}

}
