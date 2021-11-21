package sound.palette.cotroller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.JoinService;

@Controller
public class JoinController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="joinService")
	private JoinService joinService;
	
	
	@RequestMapping(value="/join")
	public ModelAndView logout(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/joinForm");
		List<Map<String, Object>> list1 = joinService.emailCheck(commandMap.getMap());
		List<Map<String, Object>> list2 = joinService.nickCheck(commandMap.getMap());

		mv.addObject("list1", list1);
		mv.addObject("list2", list2);
		return mv;
	}
	
	@RequestMapping(value="/nickCheck")
	public ModelAndView nickCheck(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/joinForm");
		
		return mv;
	}
	
	@RequestMapping(value="/emailCheck")
	public ModelAndView emailCheck(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/joinForm");
		
		return mv;
	}
	
	@RequestMapping(value="/memberVerify")
	public ModelAndView memberVerify(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/loginForm");
		
		joinService.insertMember(commandMap.getMap());
		
		return mv;
		
	
	}
}
