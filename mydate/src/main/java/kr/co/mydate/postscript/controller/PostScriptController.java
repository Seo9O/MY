package kr.co.mydate.postscript.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mydate.postscript.service.PostScriptService;
import kr.co.mydate.postscript.vo.PostScriptList;

@Controller
public class PostScriptController extends HttpServlet {
	
	@Autowired
	private PostScriptService postScriptService;
	
	@RequestMapping(value="psListAll")
	public ModelAndView psListAll(){
		ModelAndView model = new ModelAndView();
		
		model.addObject("psBestPlanner", postScriptService.psBestPlanner());
		model.addObject("psListAll", postScriptService.psListAll());
		model.addObject("psBest", postScriptService.psBest());
		model.addObject("psListSize", postScriptService.psListCnt());
		model.setViewName("postscript/ps_list");
		
		return model;	
	}
	
	@RequestMapping(value="psListPart")
	@ResponseBody
	public List<Map<String, String>> psListPart(@RequestParam("track_Num") int track_Num, @RequestParam("track_Count") int track_Count){
		Map<String, Object> result = new HashMap<>();
		Map<String, String> map = null;
		List<Map<String, String>> data = new ArrayList<>();
		
		PostScriptList dto = new PostScriptList();
		dto.setTrack_Num(track_Num);
		dto.setTrack_Count(track_Count);
		ArrayList<PostScriptList> list = postScriptService.psListPart(dto);
		for(PostScriptList ps:list){
			map = new HashMap<String, String>();
			map.put("ps_no", Integer.toString(ps.getPs_no()));
			map.put("ps_email", ps.getPs_email());
			map.put("ps_location", ps.getPs_location());
			map.put("ps_date", ps.getPs_date());
			map.put("ps_psno", Integer.toString(ps.getPs_psno()));
			map.put("ps_hour", Integer.toString(ps.getPs_hour()));
			map.put("ps_image", ps.getPs_image());
			map.put("ps_title", ps.getPs_title());
			map.put("ps_context", ps.getPs_context());
			map.put("ps_like", Integer.toString(ps.getPs_like()));
			map.put("ps_hits", Integer.toString(ps.getPs_hits()));
			map.put("mb_image", ps.getMb_image());
			
			data.add(map);
			
		}
		return data;
	}
	
	@RequestMapping(value="psListDetail")
	public ModelAndView psListDetail(){
		ModelAndView model = new ModelAndView();
		
		model.addObject("psBestPlanner", postScriptService.psBestPlanner());
		model.addObject("psListAll", postScriptService.psListAll());
		model.addObject("psBest", postScriptService.psBest());
		model.addObject("psListSize", postScriptService.psListCnt());
		model.setViewName("postscript/ps_detail");
		
		return model;	
	}
	
	@RequestMapping(value="psListInsert")
	public ModelAndView psListInsert(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName("postscript/ps_insert");
		
		return model;
	}
	
	@RequestMapping(value="fileInsert",method = RequestMethod.POST)
	@ResponseBody
	public String fileInsert(MultipartHttpServletRequest req){
		//postScriptService.psImage(request);
		Iterator<String> itr = req.getFileNames();
		System.out.println(itr);
		System.out.println(req.getFileNames());
		System.out.println(itr.hasNext());
		return "success";
	}

}
