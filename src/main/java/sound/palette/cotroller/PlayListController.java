package sound.palette.cotroller;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.LoginService;
import sound.palette.service.PlayListService;

@Controller
public class PlayListController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "playListService")
	private PlayListService playListservice;
	
	@RequestMapping(value="/myPage/myPlayList")
	public ModelAndView myPlayList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("/mymenu/myPlayList");
		
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		List<Map<String, Object>> list = playListservice.selectPlayLists(commandMap.getMap());
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/myPage/myPlayList/New")
	public ModelAndView newPlayList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/SOPA/myPage/myPlayList");
		
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		playListservice.insertPlayList(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value="/myPage/hitMusic")
	public ModelAndView hitMusic(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("/mymenu/myprofile-page");
		
		return mv;
	}
	
	@RequestMapping(value="/myPage/playList")
	public ModelAndView playList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/mymenu/myPlayListView");
		
		Map<String, Object> map = playListservice.selectPlayList(commandMap.getMap());
		map.put("PLAY_NUM", commandMap.get("PLAY_NUM"));
		mv.addObject("map", map);
		
		List<Map<String, Object>> list = playListservice.selectPIMs(commandMap.getMap());
		
		for(int i = 0; i < list.size(); i++) {
			Map<String, Object> music = list.get(i);
			music.put("name", music.get("MUSIC_TITLE"));
			music.put("artist", music.get("MUSIC_ART"));
			music.put("path", "/palette/resources/images/"+music.get("MUSIC_LINK"));
		}
		
		int index = 0;
		while(index < list.size()) {
			Collections.swap(list, index, Integer.parseInt(list.get(index).get("PIM_ORDER").toString())-1);
			if(Integer.parseInt(list.get(index).get("PIM_ORDER").toString())-1 == index) {
				index++;
			}
		}
		mv.addObject("list", list);
		
		mv.addObject("track_list", convertListToJson(list));
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/myPage/searchMusic")
	public String searchMusic(CommandMap commandMap) throws Exception {
		JSONObject obj = new JSONObject();
		
		List<Map<String, Object>> list = playListservice.searchMusic(commandMap.getMap());

		obj.put("list", list);
		
		return obj.toString();
	}
	
	@RequestMapping(value="/myPage/addMusic")
	public ModelAndView addMusic(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/SOPA/myPage/playList?PLAY_NUM="+commandMap.get("PLAY_NUM"));
		
		playListservice.insertPIM(commandMap.getMap());
		
		return mv;
	}
	
	//list 처리
	public static JSONArray convertListToJson(List<Map<String, Object>> list) {

	    JSONArray jsonArray = new JSONArray();
	    for (Map<String, Object> map : list) {
	        jsonArray.put(convertMapToJson(map));
	    }
	    return jsonArray;
	}

	//map 처리
	public static JSONObject convertMapToJson(Map<String, Object> map) {

	    JSONObject json = new JSONObject();
	    for (Map.Entry<String, Object> entry : map.entrySet()) {
	        String key = entry.getKey();
	        Object value = entry.getValue();
	        json.put(key, value);
	    }
	    return json;
	}

}
