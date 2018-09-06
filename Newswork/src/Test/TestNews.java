package Test;

import org.junit.Test;

import Dao.NewsDaoimpl;
import Dao.UserDaoimpl;

public class TestNews {

	@Test
	public void test1(){
		NewsDaoimpl newsDaoimpl=new NewsDaoimpl();
		int a=newsDaoimpl.getallrows();
		System.out.println(a);
	}
}
