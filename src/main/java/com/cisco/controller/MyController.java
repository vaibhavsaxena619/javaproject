package com.cisco.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.service.MyService;

@Controller
@ComponentScan({"com.cisco"})
public class MyController {
	
	@Autowired
	MyService service;
	
	@RequestMapping("/geo")
	public String add()
	{
		service.test();
		return "display";
		//System.out.println("hello");
	}
	
	@RequestMapping("/url")
	public ModelAndView city(@RequestParam("city") String city,HttpServletRequest request, HttpServletResponse reqResponse) throws IOException, ParseException{
		
		String cord = service.getUrl(city);
		String cords[]= cord.split(",");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("coordinates");
		mv.addObject("city", city);
		mv.addObject("longitude", cords[0]);
		mv.addObject("latitude", cords[1]);
		return mv;
	}
	
	@RequestMapping("/weather")
	public void weather(@RequestParam("longitude") String longitude, @RequestParam("latitude") String latitude,HttpServletRequest request, HttpServletResponse reqResponse) throws IOException, ParseException
	{	
		String data = service.getWeather(longitude,latitude);
		ModelAndView mv = new ModelAndView();
		
	}

}
