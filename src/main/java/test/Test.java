package test;

import com.hk.bean.User;
import com.hk.service.PasswordService;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PasswordService ps = new PasswordService();
		User us = new User();
		us.setuId("root");
		us.setuName("root");
		us.setuPassword("1234");
		System.out.println(us);
		ps.encryptPassword(us);
		System.out.println(us);

	}

}
