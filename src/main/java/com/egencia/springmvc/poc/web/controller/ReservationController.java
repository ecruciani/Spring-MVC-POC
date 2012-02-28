package com.egencia.springmvc.poc.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.egencia.springmvc.poc.domain.Reservation;
import com.egencia.springmvc.poc.exception.ReservationNotAvailableException;
import com.egencia.springmvc.poc.service.ReservationService;

@Controller
@RequestMapping("/reservationForm") 
public class ReservationController {

	@Autowired
	private ReservationService reservationService; 
	
	@RequestMapping(method = RequestMethod.GET) 
	public String setupForm(Model model) { 
		Reservation reservation = new Reservation(); 
		model.addAttribute("reservation", reservation);
		return "reservationForm"; 
	} 

	@RequestMapping(method = RequestMethod.POST) 
	public String submitForm(@Valid @ModelAttribute("reservation") Reservation reservation, BindingResult result) throws ReservationNotAvailableException { 
		if (result.hasErrors()) { 
            return "reservationForm"; 
        } else {
        	reservationService.make(reservation);
    		return "redirect:reservationSuccess";
        }
	}
	
	@ExceptionHandler(ReservationNotAvailableException.class)
	public ModelAndView reservationAlreadyExists(ReservationNotAvailableException exception){
		return new ModelAndView("reservationError", "date", exception.getDate());
	}
}
