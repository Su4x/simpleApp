package suhaib.simple.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public boolean checkValidateUser(String email,String password) {
		if(email.equals("a@a")&& password.equals("aa")) {
			return true;
		}else {
			return false;
		}
		
	}
}
