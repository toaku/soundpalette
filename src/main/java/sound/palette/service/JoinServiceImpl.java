package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import sound.palette.dao.JoinDAO;



@Service("joinService")
public class JoinServiceImpl implements JoinService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="joinDAO")
	private JoinDAO joinDAO;
	
	@Override
	public void insertMember(Map<String, Object> map) throws Exception {
		joinDAO.insertMember(map);
	}
	
	@Override
	public List<Map<String, Object>> emailCheck(Map<String, Object> map) throws Exception {
		return joinDAO.emailCheck(map);
	}
	
	public List<Map<String, Object>> nickCheck(Map<String, Object> map) throws Exception {
		return joinDAO.nickCheck(map);
	}
	
//	@Override
//	public Map<String, Object> selectMember(Map<String, Object> map) throws Exception {
//		return joinDAO.selectMember(map);
//	}
//	
//	@Override
//	public void updateMember(Map<String, Object> map) throws Exception {
//		joinDAO.updateMember(map);
//	}
//	
//	@Override
//	public void deleteMember(Map<String, Object> map) throws Exception {
//		joinDAO.deleteMember(map);
//	}

}

