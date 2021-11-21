package sound.palette.cotroller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.BoardService;
import sound.palette.service.CommentService;

@Controller
public class CommentController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "commentService")
	private CommentService commentService;

	@Resource(name = "boardService")
	private BoardService boardService;

	@RequestMapping(value = "/mrbDetail/cmtWrite")
	public ModelAndView cmtWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardDetail");
		HttpSession session = request.getSession();
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		commentService.insertCMT(commandMap.getMap());
		
		List<Map<String, Object>> list = commentService.selectCMTs(commandMap.getMap());
		mv.addObject("list", list);

		Map<String, Object> map = boardService.selectDetailMRB(commandMap.getMap());
		mv.addObject("map", map);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "/mrbDetail/cmtDelete")
	public ModelAndView cmtDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardDetail");

		HttpSession session = request.getSession();
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));

		List<Map<String, Object>> list = commentService.selectCMTs(commandMap.getMap());
		mv.addObject("list", list);

		commentService.deleteCMT(commandMap.getMap());

		Map<String, Object> map = boardService.selectDetailMRB(commandMap.getMap());
		mv.addObject("map", map);
		System.out.println(commandMap.get("CMT_NUM"));

		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mrbDetail/cmtRep")
	public String cmtRep(CommandMap commandMap) throws Exception {
		JSONObject obj = new JSONObject();
		
		commentService.insertCmtRep(commandMap.getMap());

		return obj.toString();
	}

}