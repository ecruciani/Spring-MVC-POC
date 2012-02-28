package com.egencia.springmvc.poc.service;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.egencia.springmvc.poc.domain.Reservation;
import com.egencia.springmvc.poc.exception.ReservationNotAvailableException;

@Service
public class ReservationServiceImpl implements ReservationService {

	private Set<Reservation> reservations = Collections.synchronizedSet(new HashSet<Reservation>());

	@Override
	public void make(Reservation reservation) throws ReservationNotAvailableException {
		for (Reservation made : reservations) { 
			if (made.getHotelName().equals(reservation.getHotelName()) 
					&& made.getDate().equals(reservation.getDate())) {
				String message = new StringBuilder("A reservation already exists for hotel ").append(made.getHotelName()).append(" for date ").append(made.getDate()).toString();
				throw new ReservationNotAvailableException( 
						message, made.getDate()); 
			} 
		} 
		reservations.add(reservation);
	}

}
