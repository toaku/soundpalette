package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import sound.palette.dao.CommentDAO;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="commentDAO")
	private CommentDAO commentDAO;

	@Override
	public List<Map<String, Object>> selectCMTs(Map<String, Object> map) throws Exception {
		return commentDAO.selectCMTs(map);
	}

	@Override
	public void insertCMT(Map<String, Object> map) throws Exception {
		commentDAO.insertCMT(map);
		
	}

	@Override
	public void deleteCMT(Map<String, Object> map) throws Exception {
		commentDAO.deleteCMT(map);
		
	}
	
	//신고하기
	@Override
	public void insertCmtRep(Map<String, Object> map) throws Exception {
		commentDAO.insertCmtRep(map);
	}
	
	

}
