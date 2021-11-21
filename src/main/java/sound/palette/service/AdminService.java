package sound.palette.service;

import java.util.List;
import java.util.Map;

public interface AdminService {

	// 회원리스트
	public List<Map<String, Object>> selectMembers(Map<String, Object> map) throws Exception;

	// 회원탈퇴
	public void deleteMember(Map<String, Object> map) throws Exception;

	// 회원정지
	public void updateMemberST(Map<String, Object> map) throws Exception;

	// 신고관리 리스트(코멘트)
	public List<Map<String, Object>> selectRepCmt(Map<String, Object> map) throws Exception;

	// 신고관리 리스트(게시판)
	public List<Map<String, Object>> selectRepMrb(Map<String, Object> map) throws Exception;
	
	public void updateMainPlayList(Map<String, Object> map) throws Exception;
}