package suhaib.simple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import suhaib.simple.service.LoginService;

@Controller
@SessionAttributes("email")
public class LoginController {
	//LoginService loginService = new LoginService();
	
	@Autowired
	LoginService loginService;
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	//@ResponseBody
	public String loginPage(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	//@ResponseBody
	public String getLoginInfo(@RequestParam String email,String pass,ModelMap model) {
		boolean isValidUser = loginService.checkValidateUser(email, pass);
		if(!isValidUser) {
			model.put("errorMsg","كلمة الرور او البريد الالكتروني غير صحيح");
			return "login";
		}
		model.put("email",email);
		return "home";
		
	}
	

}
