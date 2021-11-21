package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import sound.palette.dao.AbstractDAO;

@Repository("joinDAO")
public class JoinDAO extends AbstractDAO {
	
	// 회원 추가
	public void insertMember(Map<String, Object> map) throws Exception {	
		insert("palette.insertMember", map);	
	}

	// email 중복 체크
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> emailCheck(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("palette.selectMemberEmailForJoin", map);
	}
	
	// nickname 중복체크
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> nickCheck(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("palette.selectMemberNick", map);
	}
	
//	// 회원 조회
//	@SuppressWarnings("unchecked")
//	public Map<String, Object> selectMember(Map<String, Object> map) throws Exception{
//		return (Map<String, Object>)selectOne("MEMBER.selectMember",map);
//	}
//
//	// 회원 수정
//	public void updateMember(Map<String, Object> map) throws Exception {
//		update("MEMBER.updateMember", map);
//	}
//
//	// 회원 삭제
//	public void deleteMember(Map<String, Object> map) throws Exception {
//		delete("MEMBER.deleteMember", map);	
//	}
}
