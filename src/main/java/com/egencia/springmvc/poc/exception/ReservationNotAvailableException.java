package com.egencia.springmvc.poc.exception;

import java.util.Date;


public class ReservationNotAvailableException extends Exception {

	private static final long serialVersionUID = 1L;

	private Date date;
	
	public ReservationNotAvailableException(String message, Date date) {
		super(message);
		this.date = date;
	}

	public Date getDate() {
		return date;
	}

}
