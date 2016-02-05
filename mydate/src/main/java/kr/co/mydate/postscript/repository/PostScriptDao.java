package kr.co.mydate.postscript.repository;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import kr.co.mydate.postscript.vo.Member;
import kr.co.mydate.postscript.vo.PostScriptList;

public interface PostScriptDao {
	
	@Select("select ps.*,  mb_image  from md_postscript as ps inner join md_member on mb_email = ps_email order by ps_date desc, ps_no desc limit 0,7")
	public ArrayList<PostScriptList> psListAll();
	
	@Select("select count(*) from md_postscript")
	public String psListCnt();
	
	@Select("select ps.*,  mb_image  from md_postscript as ps inner join md_member on mb_email = ps_email order by ps_date desc, ps_no desc limit #{track_Num},#{track_Count}")
	public ArrayList<PostScriptList> psListPart(PostScriptList bean);
	
	@Select("select distinct mb_image from md_postscript inner join md_member on mb_email = ps_email order by ps_hits desc limit 0,4")
	public ArrayList<Member> psBestPlanner();
	
	@Select("select ps.*, mb_image from md_postscript as ps inner join md_member on mb_email = ps_email where ps_like in(select max(ps_like) from md_postscript group by ps_location) order by ps_location asc;")
	public ArrayList<PostScriptList> psBest();
	
	@Insert("insert into md_image(pi_image) values(#{pi_image})")
	public int psImage(String pi_image);
	
}
