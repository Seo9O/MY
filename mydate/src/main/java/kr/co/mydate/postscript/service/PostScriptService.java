package kr.co.mydate.postscript.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.mydate.postscript.repository.PostScriptDao;
import kr.co.mydate.postscript.repository.PostScriptDataInter;
import kr.co.mydate.postscript.vo.Member;
import kr.co.mydate.postscript.vo.PostScriptList;

@Service
public class PostScriptService {
	
	@Autowired
	private PostScriptDataInter postScriptDataInter;
	
	
	public ArrayList<PostScriptList> psListAll(){

		return postScriptDataInter.psListAll();
	}
	
	public ArrayList<PostScriptList> psListPart(PostScriptList bean){

		return postScriptDataInter.psListPart(bean);
	}
	
	public String psListCnt(){
		return postScriptDataInter.psListCnt();
	}
	
	public ArrayList<Member> psBestPlanner(){

		return postScriptDataInter.psBestPlanner();
	}
	
	public ArrayList<PostScriptList> psBest(){

		return postScriptDataInter.psBest();
	}
	
	public int psImage(HttpServletRequest request){
		
		upload(request);
		
		
		return 1;//postScriptDataInter.psImage(pi_image);
	}
	
	private void upload(HttpServletRequest request){
		MultipartHttpServletRequest req = (MultipartHttpServletRequest)request;
		String path="C:/Users/user/git2/mydate/src/main/webapp/resources/ps_data";
		File f;
		MultipartFile file;
		Iterator<String> itr =  req.getFileNames();
		file = req.getFile("pd_image");
		System.out.println(req.getFile("pd_image"));
		while(itr.hasNext()){
			/*String fileName = itr.next();
			file = req.getFile(fileName);*/
			f = new File(path, file.getOriginalFilename());
			System.out.println(file.getOriginalFilename());
			
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
