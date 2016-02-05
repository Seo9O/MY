package kr.co.mydate.postscript.repository;

import java.util.ArrayList;

import org.springframework.dao.DataAccessException;
import org.springframework.ui.Model;

import kr.co.mydate.postscript.vo.Member;
import kr.co.mydate.postscript.vo.PostScriptList;

public interface PostScriptDataInter {
	ArrayList<PostScriptList> psListAll() throws DataAccessException;
	ArrayList<PostScriptList> psListPart(PostScriptList bean);
	String psListCnt();
	ArrayList<Member> psBestPlanner();
	ArrayList<PostScriptList> psBest();
	int psImage(String pi_image);
}
