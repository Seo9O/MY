package pack.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class SawonImpl extends JdbcDaoSupport implements SawonInter{
	
	@Autowired
	private DataSource dataSource;
	
	@PostConstruct
	public void init(){
		setDataSource(dataSource);
	}
	
	@Override
	public List<SawonDto> selectAll(String buserNum) throws DataAccessException{
		RowMapper rowMapper = new SawonRowMapper();
		String sql = "select sawon_no, sawon_name, buser_name, sawon_jik from sawon inner join buser on buser_no=buser_num";
		
		if(buserNum.equals("10") || buserNum.equals("20") || buserNum.equals("30") || buserNum.equals("40")){
			sql += " where buser_num=" + buserNum;
		}
			
		return getJdbcTemplate().query(sql, rowMapper);
	}
	
	class SawonRowMapper implements RowMapper{
		
		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			SawonDto dto = new SawonDto();
			
			dto.setSawon_no(rs.getString("sawon_no"));
			dto.setSawon_name(rs.getString("sawon_name"));
			dto.setBuser_name(rs.getString("buser_name"));
			dto.setSawon_jik(rs.getString("sawon_jik"));
			
			return dto;
		}
		
	}
}
