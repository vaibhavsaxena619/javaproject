package com.cisco.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
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
	public ModelAndView weather(@RequestParam("longitude") String longitude, @RequestParam("latitude") String latitude,HttpServletRequest request, HttpServletResponse reqResponse) throws IOException, ParseException
	{	
		JSONObject job = service.getWeather(longitude, latitude);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("humidity", job.get("humidity"));
		mv.addObject("pressure", job.get("pressure"));
		mv.addObject("temp_max", job.get("temp_max"));
		mv.addObject("temp_min", job.get("temp_min"));
		mv.addObject("sea_level", job.get("sea_level"));
		mv.addObject("temp", job.get("temp"));
		mv.addObject("grnd_level", job.get("grnd_level"));
		mv.addObject("feels_like", job.get("feels_like"));
		
		mv.setViewName("weat");
		
		return mv;
	}

}
