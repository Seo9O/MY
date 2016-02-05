package kr.co.mydate.postscript.repository;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.jsp.jstl.sql.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mydate.postscript.vo.Member;
import kr.co.mydate.postscript.vo.PostScriptList;

@Repository
public class PostScriptImpl implements PostScriptDataInter{
	
	@Autowired
	private PostScriptDao postScriptDao;
	
	@Override
	public ArrayList<PostScriptList> psListAll() {
		ArrayList<PostScriptList> list = postScriptDao.psListAll();
		
		return list;
	}
	
	@Override
	public ArrayList<PostScriptList> psListPart(PostScriptList bean) {
		ArrayList<PostScriptList> list = postScriptDao.psListPart(bean);
		return list;
	}
	
	@Override
	public String psListCnt() {
		String size = postScriptDao.psListCnt();
		return size;
	}
	
	@Override
	public ArrayList<Member> psBestPlanner() {
		ArrayList<Member> list = postScriptDao.psBestPlanner();
		return list;
	}
	
	@Override
	public ArrayList<PostScriptList> psBest(){
		ArrayList<PostScriptList> list = postScriptDao.psBest();
		return list;
	}
	
	@Override
	public int psImage(String pi_image) {
		int result = postScriptDao.psImage(pi_image);
		return result;
	}
	
}
