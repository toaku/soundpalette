package sound.palette.cotroller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.MypageService;

@Controller
public class MypageController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "mypageService")
	private MypageService mypageService;

	// 마이페이지 . 좋아요 글 . 내 글 
	@RequestMapping(value = "/myPage")
	public ModelAndView mypage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mymenu/myprofile-page");
		
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		List<Map<String, Object>> list01 = mypageService.nickCheck(commandMap.getMap());
		
		Map<String, Object> map = mypageService.selectMemberIMG(commandMap.getMap());
		
		List<Map<String, Object>> list = mypageService.selectMyMRB(commandMap.getMap());
        for(int i = 0; i < list.size(); i++) {
            if(list.get(i).get("COUNTHIT") == null) {
                list.get(i).put("COUNTHIT", 0);
            }
        }
        
        List<Map<String, Object>> list2 = mypageService.selectMyhit(commandMap.getMap());
        for(int i = 0; i < list.size(); i++) {
            if(list.get(i).get("COUNTHIT") == null) {
                list.get(i).put("COUNTHIT", 0);
            }
        }
        mv.addObject("list", list);
        mv.addObject("list2", list2);
		
		mv.addObject("list01", list01);
		mv.addObject("map", map);

		return mv;
	}

	// 회원정보수정 - 폼
	@RequestMapping(value = "/myPage/modifyForm")
	public ModelAndView mypagemember(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mymenu/myprofile-page");
		
		

		return mv;
	}

	// 회원정보수정
	@RequestMapping(value = "/myPage/modify", method = RequestMethod.POST)
	public ModelAndView mypagememberupdate(CommandMap commandMap, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("/mymenu/myprofile-page");

		mypageService.userInfoUpdate(commandMap.getMap());
		


		Map<String, Object> result = mypageService.userDetail(commandMap.getMap());

		session.setAttribute("MEM_NICK", result.get("MEM_NICK"));
		session.setAttribute("MEM_PW", result.get("MEM_PW"));

		System.out.println(commandMap.getMap());

		return mv;
	}
	
	@RequestMapping(value="/file/upload")
	public ModelAndView mypageimage(CommandMap commandMap, HttpServletRequest request)
			throws Exception {
		
		ModelAndView mv = new ModelAndView("/mymenu/myprofile-page");
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		mypageService.userImage(commandMap.getMap(), request);
		
		return mv;
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/myPage/myInfo")
	public String mrbList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		JSONObject obj = new JSONObject();
		
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));

		List<Map<String, Object>> list = mypageService.selectMyMRB(commandMap.getMap());
        for(int i = 0; i < list.size(); i++) {
            if(list.get(i).get("COUNTHIT") == null) {
                list.get(i).put("COUNTHIT", 0);
            }
        }
        obj.put("list", list);
        
		return obj.toString();
	}
	
	@ResponseBody
	@RequestMapping(value = "/myHit")
	public String mrbHit(CommandMap commandMap) throws Exception {
		JSONObject obj = new JSONObject();
		
		Map<String, Object> hitMap = mypageService.doHIT(commandMap.getMap());
		System.out.println(hitMap);
		obj.put("HIT_DEL", hitMap.get("HIT_DEL"));
		obj.put("COUNTHIT", hitMap.get("COUNTHIT"));

	    
	    return obj.toString();
	}
	
	
	
	  // 회원탈퇴
	  
	  @RequestMapping(value = "/myPage/myInfoDelete") public void
	  mypagememberdelete(HttpServletRequest request, HttpServletResponse response,
	  CommandMap commandMap) throws Exception { HttpSession session =
	  request.getSession(false); mypageService.deleteMember(commandMap.getMap());
	  session.invalidate();
	  
	  response.setCharacterEncoding("UTF-8");
	  response.setContentType("text/html; charset=utf-8"); PrintWriter out =
	  response.getWriter();
	  
	  out.
	  println("<script>alert('다음에 다시 뵙겠습니다!');location.href='/palette/SOPA/loginForm/';</script>"
	  );
	  
	  out.flush(); }
	 
}
