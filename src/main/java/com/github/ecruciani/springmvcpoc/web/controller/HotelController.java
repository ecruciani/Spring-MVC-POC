package com.github.ecruciani.springmvcpoc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.ecruciani.springmvcpoc.domain.Hotel;
import com.github.ecruciani.springmvcpoc.service.HotelService;

@Controller
public class HotelController {

	@Autowired
	private HotelService hotelService;
	
	@RequestMapping(value = "/hotel/{hotelId}")
	public String displayHotelForId(@PathVariable Integer hotelId, Model model){
		
		Hotel hotel = this.hotelService.findHotelById(hotelId);
		
		//add hotels in model in order to display it in view
		model.addAttribute("hotel", hotel);
		
		return "hotel";
	}
	
	@RequestMapping(value = "/hotelXml/{hotelId}", produces = "application/xml")
	public @ResponseBody Hotel getHotelByIdInXml(@PathVariable Integer hotelId){
		return this.hotelService.findHotelById(hotelId);
	}
	
	@RequestMapping(value = "/hotelJson/{hotelId}", produces = "application/json")
	public @ResponseBody Hotel getHotelByIdInJson(@PathVariable Integer hotelId){
		return this.hotelService.findHotelById(hotelId);
	}
	
}
