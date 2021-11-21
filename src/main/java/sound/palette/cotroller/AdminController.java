package sound.palette.cotroller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.AdminService;
import sound.palette.service.PlayListService;

@Controller
public class AdminController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "adminService")
	private AdminService adminService;
	
	@Resource(name = "playListService")
	private PlayListService playListservice;

	// 회원 리스트
	@RequestMapping(value = "/admin/profileList")
	public ModelAndView profileList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-memberProfileList");
		List<Map<String, Object>> memberlist = adminService.selectMembers(commandMap.getMap());
		for (int i = 0; i < memberlist.size(); i++) {
			if (memberlist.get(i).get("COUNTHIT") == null) {
				memberlist.get(i).put("COUNTHIT", 0);
			}
			if (memberlist.get(i).get("MEM_DEC") == null) {
				memberlist.get(i).put("MEM_DEC", 0);
			}
		}

		mv.addObject("memberlist", memberlist);

		return mv;
	}

	// 회원정지
	@RequestMapping(value = "/admin/memberstop")
	public ModelAndView memberstop(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-memberProfileList");
		Date stDate = new Date();
		commandMap.put("MEM_STDATE", stDate);
		adminService.updateMemberST(commandMap.getMap());

		List<Map<String, Object>> memberlist = adminService.selectMembers(commandMap.getMap());
		for (int i = 0; i < memberlist.size(); i++) {
			if (memberlist.get(i).get("COUNTHIT") == null) {
				memberlist.get(i).put("COUNTHIT", 0);
			}
			if (memberlist.get(i).get("MEM_DEC") == null) {
				memberlist.get(i).put("MEM_DEC", 0);
			}
		}
		mv.addObject("memberlist", memberlist);

		return mv;
	}

	// 회원정지해제
	@RequestMapping(value = "/admin/membernotstop")
	public ModelAndView membernotstop(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-memberProfileList");

		commandMap.put("MEM_STDATE", null);
		adminService.updateMemberST(commandMap.getMap());
		System.out.println(commandMap.get("MEM_NUM"));
		List<Map<String, Object>> memberlist = adminService.selectMembers(commandMap.getMap());

		for (int i = 0; i < memberlist.size(); i++) {
			if (memberlist.get(i).get("COUNTHIT") == null) {
				memberlist.get(i).put("COUNTHIT", 0);
			}
			if (memberlist.get(i).get("MEM_DEC") == null) {
				memberlist.get(i).put("MEM_DEC", 0);
			}
		}
		mv.addObject("memberlist", memberlist);

		return mv;
	}

	// 회원삭제
	@RequestMapping(value = "/admin/memberDelete")
	public ModelAndView memberDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-memberProfileList");
		System.out.println(commandMap.get("MEM_NUM"));

		adminService.deleteMember(commandMap.getMap());

		List<Map<String, Object>> memberlist = adminService.selectMembers(commandMap.getMap());
		for (int i = 0; i < memberlist.size(); i++) {
			if (memberlist.get(i).get("COUNTHIT") == null) {
				memberlist.get(i).put("COUNTHIT", 0);
			}
			if (memberlist.get(i).get("MEM_DEC") == null) {
				memberlist.get(i).put("MEM_DEC", 0);
			}
		}
		mv.addObject("memberlist", memberlist);

		return mv;
	}

	@RequestMapping(value = "/admin/PlayList")
	public ModelAndView PlayList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-song");
		
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		List<Map<String, Object>> list = playListservice.selectPlayLists(commandMap.getMap());
		mv.addObject("list", list);
		
		List<Map<String, Object>> mainList = new ArrayList<Map<String,Object>>();
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).get("PLAY_MAIN").equals("Y")) {
				mainList.add(list.get(i));
			}
		}
		
		mv.addObject("mainList", mainList);

		return mv;
	}
	
	@RequestMapping(value = "/admin/addMain")
	public ModelAndView addMain(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/SOPA/admin/PlayList");
		
		adminService.updateMainPlayList(commandMap.getMap());
		
		return mv;
	}

	@RequestMapping(value = "/admin/PlayListView")
	public ModelAndView PlayListView(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-song");

		return mv;
	}

	@RequestMapping(value = "/admin/tag")
	public ModelAndView tag(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-tagList");

		return mv;
	}

	@RequestMapping(value = "/admin/tagView")
	public ModelAndView tagView(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-tagList");

		return mv;
	}

	@RequestMapping(value = "/admin/tagDelete")
	public ModelAndView tagDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-tagList");

		return mv;
	}

	// 신고목록

	@RequestMapping(value = "/admin/repmrb")
	public ModelAndView repmrb(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-boardrep");

		return mv;
	}

	// 게시글리스트
	@RequestMapping(value = "/admin/repmrbView")
	public ModelAndView repmrbView(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-boardrep");
		List<Map<String, Object>> repmrblist = adminService.selectRepMrb(commandMap.getMap());
		for (int i = 0; i < repmrblist.size(); i++) {
			if (repmrblist.get(i).get("COUNTHIT") == null) {
				repmrblist.get(i).put("COUNTHIT", 0);
			}
			if (repmrblist.get(i).get("MEM_DEC") == null) {
				repmrblist.get(i).put("MEM_DEC", 0);
			}
		}

		mv.addObject("repmrblist", repmrblist);
		return mv;
	}

	@RequestMapping(value = "/admin/repcmt")
	public ModelAndView repcmt(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin-cmtrep");

		return mv;
	}

	// 신고-덧글리스트
	@RequestMapping(value = "/admin/repcmtView")
	public ModelAndView repView(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/admin-cmtrep");
		List<Map<String, Object>> repcmtlist = adminService.selectRepCmt(commandMap.getMap());
		for (int i = 0; i < repcmtlist.size(); i++) {
			if (repcmtlist.get(i).get("COUNTHIT") == null) {
				repcmtlist.get(i).put("COUNTHIT", 0);
			}
			if (repcmtlist.get(i).get("MEM_DEC") == null) {
				repcmtlist.get(i).put("MEM_DEC", 0);
			}
		}

		mv.addObject("repcmtlist", repcmtlist);

		return mv;
	}

}
