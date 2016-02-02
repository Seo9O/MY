package pack.business;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("dbinit.xml");
		businessInter inter = (businessInter)context.getBean("businessImpl");
		
		inter.sawonList();
	}
}
