package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import sound.palette.dao.AdminDAO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "adminDAO")
	private AdminDAO adminDAO;

	// 회원목록
	@Override
	public List<Map<String, Object>> selectMembers(Map<String, Object> map) throws Exception {
		return adminDAO.selectMembers(map);
	}

	// 회원정보삭제

	@Override
	public void deleteMember(Map<String, Object> map) throws Exception {
		adminDAO.deleteMember(map);
	}

	// 회원정지
	@Override
	public void updateMemberST(Map<String, Object> map) throws Exception {
		adminDAO.updateMemberST(map);
	}

	// 신고관리 리스트
	@Override
	public List<Map<String, Object>> selectRepCmt(Map<String, Object> map) throws Exception {
		return adminDAO.selectRepCmt(map);
	}

	@Override
	public List<Map<String, Object>> selectRepMrb(Map<String, Object> map) throws Exception {
		return adminDAO.selectRepMrb(map);
	}
	
	public void updateMainPlayList(Map<String, Object> map) throws Exception {
		adminDAO.updateMainPlayList(map);
	}

}