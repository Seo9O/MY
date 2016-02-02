package pack.business;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import pack.model.SawonDto;
import pack.model.SawonInter;

@Service
@ComponentScan("pack.model")
public class BusinessImpl implements businessInter{
	
	@Autowired
	private SawonInter sawonInter;
	
	@Override
	public void sawonList() {
		System.out.println("부서번호 입력 : ");
		Scanner scanner = new Scanner(System.in);
		
		String buserNum = scanner.nextLine();
		scanner.close();
		
		int cnt = 0;
		
		for(SawonDto s : sawonInter.selectAll(buserNum)){
			System.out.println("사원번호" + s.getSawon_no() +" 사원명 : " + s.getSawon_name() + " 부서명 : " + s.getBuser_name() + " 사원직급 : " + s.getSawon_jik());
		}
		
	}
}
