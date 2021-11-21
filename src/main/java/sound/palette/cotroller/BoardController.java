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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.BoardService;
import sound.palette.service.CommentService;

@Controller
public class BoardController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "boardService")
	private BoardService boardService;
	
	@Resource(name = "commentService")
	private CommentService commentService;

	@RequestMapping(value = "/mrbList")
	public ModelAndView mrbList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardList");

		List<Map<String, Object>> list = boardService.selectMRBs(commandMap.getMap());
        for(int i = 0; i < list.size(); i++) {
            if(list.get(i).get("COUNTHIT") == null) {
                list.get(i).put("COUNTHIT", 0);
            }
        }
        mv.addObject("list", list);
        
		return mv;
	}

	@RequestMapping(value = "/mrbWriteForm")
	public ModelAndView mrbWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardwrite");

		return mv;
	}

	@RequestMapping(value = "/mrbWrite")
	public ModelAndView mrbWrite(CommandMap commandMap, MultipartHttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardDetail");
		HttpSession session = request.getSession();
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		System.out.println(commandMap.get("MEM_NUM"));
		
		boardService.insertMRB(commandMap.getMap(), request);
		Map<String, Object> map = boardService.selectDetailMRB(commandMap.getMap());
		if(map.get("HIT_DEL") == null) {
			map.put("HIT_DEL", "Y");
		}
		mv.addObject("map", map);
		
		System.out.println(commandMap.get("MEM_NUM"));

		return mv;
	}

	@RequestMapping(value = "/mrbUpdateForm")
	public ModelAndView mrbUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardmodify");

		Map<String, Object> map = boardService.selectDetailMRB(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/mrbUpdate")
	public ModelAndView mrbUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardDetail");

		boardService.updateMRB(commandMap.getMap());
		
		Map<String, Object> map = boardService.selectDetailMRB(commandMap.getMap());
		
		if(map.get("HIT_DEL") == null) {
			map.put("HIT_DEL", "N");
		}
		mv.addObject("map", map);
		
		List<Map<String, Object>> list = commentService.selectCMTs(commandMap.getMap());
		mv.addObject("list", list);

		mv.addObject("MRB_NUM", commandMap.get("MRB_NUM"));

		return mv;
	}

	@RequestMapping(value = "/mrbDelete")
	public ModelAndView mrbDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardList");

		boardService.deleteMRB(commandMap.getMap());
		
		List<Map<String, Object>> list = boardService.selectMRBs(commandMap.getMap());
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/mrbDetail")
	public ModelAndView mrbDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mrb/musicboardDetail");
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		List<Map<String, Object>> list = commentService.selectCMTs(commandMap.getMap());
		mv.addObject("list", list);
		Map<String, Object> map = boardService.selectDetailMRB(commandMap.getMap());
		map.put("MRB_NUM", commandMap.get("MRB_NUM")); 
		map.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		if(map.get("HIT_DEL") == null) {
			map.put("HIT_DEL", "Y");
		}
		
		mv.addObject("map", map);
		

		return mv;
	}
	
	//신고하기
	@ResponseBody
	@RequestMapping(value = "/mrbRep")
	public String mrbRep(CommandMap commandMap) throws Exception {
		JSONObject obj = new JSONObject();
		boardService.insertMrbRep(commandMap.getMap());
		
		return obj.toString();
	}
	
	//좋아요
	@ResponseBody
	@RequestMapping(value = "/mrbHit")
	public String mrbHit(CommandMap commandMap) throws Exception {
		JSONObject obj = new JSONObject();
		
		Map<String, Object> hitMap = boardService.doHIT(commandMap.getMap());
		System.out.println(hitMap);
		obj.put("HIT_DEL", hitMap.get("HIT_DEL"));
		obj.put("COUNTHIT", hitMap.get("COUNTHIT"));

	    
	    return obj.toString();
	}

}
