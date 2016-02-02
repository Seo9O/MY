package pack.model;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface SawonInter {
	List<SawonDto> selectAll(String buserNum) throws DataAccessException; 
}
