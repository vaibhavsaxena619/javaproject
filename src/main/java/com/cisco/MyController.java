package com.cisco;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@ComponentScan({"com.cisco"})
public class MyController {
	
	@RequestMapping("/geo")
	public String add()
	{
		return "display";
		//System.out.println("hello");
	}

}
