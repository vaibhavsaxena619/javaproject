package com.cisco.service;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Scanner;

import javax.management.RuntimeErrorException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class MyService {
	
	public void test()
	{
		System.out.println("hello");
	}

	public String getUrl(String city) throws IOException, ParseException {
		
		String urlString = "https://api.mapbox.com/geocoding/v5/mapbox.places/"+city+".json?access_token=pk.eyJ1Ijoib21hcmF0aGUiLCJhIjoiY2thczhsaDd3MnAyMDMxcDZxdjlqbW42MCJ9.gX18I7wsIqhLzc6vLoejVQ";
		URL url = new URL(urlString);
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod("GET");
		conn.connect();
		int responseCode = conn.getResponseCode();
		String inline = new String();
		if(responseCode !=200)
		{
			throw new RuntimeErrorException(null);
		}
		else
		{
			Scanner sc =new Scanner(url.openStream());
			while(sc.hasNext())
			{
				 inline += sc.nextLine();
			}
			sc.close();
		}
		
	JSONParser parser = new JSONParser();
	JSONObject ob1 = (JSONObject) parser.parse(inline);
	
	JSONArray jarr = (JSONArray) ob1.get("features");
	
	JSONObject job = (JSONObject) jarr.get(0);
	String cord =job.get("center").toString();
	cord = cord.substring(1, cord.length()-1);

		return cord;
	}

	public String getWeather(String longitude, String latitude) throws IOException, ParseException {
		
		String urlString = "http://api.openweathermap.org/data/2.5/weather?lat="+latitude+"&"+"lon="+longitude+"&appid=ecddfa734542b6a1f9d971eeed5f1109";
		URL url = new URL(urlString);
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod("GET");
		conn.connect();
		int responseCode = conn.getResponseCode();
		String inline = new String();
		if(responseCode !=200)
		{
			throw new RuntimeErrorException(null);
		}
		else
		{
			Scanner sc =new Scanner(url.openStream());
			while(sc.hasNext())
			{
				 inline += sc.nextLine();
			}
			sc.close();
		}
		
		 ObjectMapper mapper = new ObjectMapper();	
		 Map<String, String> map = mapper.readValue(inline, Map.class);
		 System.out.println(map.values());
		 
	
		return null;
	}

}
