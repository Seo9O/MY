package pack.aspect;

import java.util.Scanner;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class RunAdvice {
	
	@Around("execution(public void sawonList())")
	public Object hahahah(ProceedingJoinPoint joinPoint) throws Throwable{
		Scanner scanner = new Scanner(System.in);
		System.out.print("id 입력 : ");
		String id = scanner.next();
		
		if(!id.equalsIgnoreCase("kor")){
			System.out.println("id 불일치! 작업 종료");
			return null;
		}
		
		Object object = joinPoint.proceed();
		
		return object;
	}
	
}
