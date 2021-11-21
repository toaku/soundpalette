package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("adminDAO")
public class AdminDAO extends AbstractDAO {

	// 회원리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMembers(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("palette.selectMembers", map);
	}

	// 회원 탈퇴
	public void deleteMember(Map<String, Object> map) throws Exception {
		update("palette.deleteMember", map);
	}

	// 회원 정지
	public void updateMemberST(Map<String, Object> map) throws Exception {
		update("palette.updateMemberST", map);
	}

	// 신고관리 리스트 (게시판)
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRepMrb(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("palette.selectRepMrb", map);
	}

	// 신고관리 리스트 (코멘트)
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRepCmt(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("palette.selectRepCmt", map);
	}
	
	public void updateMainPlayList(Map<String, Object> map) throws Exception {
		update("palette.updateMainPlayList", map);
	}

}