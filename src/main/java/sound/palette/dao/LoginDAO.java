package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;


@Repository("loginDAO")
public class LoginDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectId(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("palette.selectMemberEmail", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectPw(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("palette.selectLoginAccount", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectInfo(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("palette.selectMemberLogin", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> findId(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>) selectList("palette.selectMemberId", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> findPw(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>) selectList("palette.selectMemberPw", map);
	}
}