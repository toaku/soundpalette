package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("mypageDAO")
public class MypageDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public Map<String, Object> userDetail(Map<String, Object> map) { // 회원 수정 폼 보기
		return (Map<String, Object>) selectOne("palette.selectMemberInfo", map);
	} // 한줄만 불러올땐 selectOne, List로 불러올땐 selectList

	public void userInfoUpdate(Map<String, Object> map) { // 비번, 닉넴 수정
		update("palette.updateMemberInfo", map);
	}

	public void deleteMyInfo(Map<String, Object> map) {
		update("palette.deleteMember", map);// 회원탈퇴 삭제가 아닌 컬럼 N -> Y로
	}

	public void userImage(Map<String, Object> map) throws Exception { // 회원 이미지
		insert("palette.insertIMG", map);
	}
	
	public void updateMEMIMG(Map<String, Object> map) {
		update("palette.updateMEMIMG", map);
	}
	
	public void deleteMRB(Map<String, Object> map) throws Exception {
		update("palette.deleteMRB", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMemberIMG(Map<String, Object> map) { 
		return (Map<String, Object>) selectOne("palette.selectMemberIMG", map);
	}
	
	// Mypage 내가 쓴 글 
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMyMRB(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("palette.selectMyMRB", map);
	}
	
	// Mypage 내가 좋아요 한 글
		@SuppressWarnings("unchecked")
		public List<Map<String, Object>> selectMyhit(Map<String, Object> map) throws Exception {
			return (List<Map<String, Object>>) selectList("palette.selectMyhit", map);
		}
	// 좋아요 기능 
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectHIT(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("palette.selectHIT", map);
	}
		
	public void insertHIT(Map<String, Object> map) throws Exception {
		insert("palette.insertHIT", map);
		}
	
	public void updateHIT(Map<String, Object> map) throws Exception {
		update("palette.updateHIT", map);
	}
		
	// nickname 중복체크
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> nickCheck(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("palette.selectMemberNick", map);
	}

}
