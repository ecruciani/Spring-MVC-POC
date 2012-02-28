package com.egencia.springmvc.poc.service;

import com.egencia.springmvc.poc.domain.Reservation;
import com.egencia.springmvc.poc.exception.ReservationNotAvailableException;

public interface ReservationService {

	void make(Reservation reservation) throws ReservationNotAvailableException;

}
