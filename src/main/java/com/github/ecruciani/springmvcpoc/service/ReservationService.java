package com.github.ecruciani.springmvcpoc.service;

import com.github.ecruciani.springmvcpoc.domain.Reservation;
import com.github.ecruciani.springmvcpoc.exception.ReservationNotAvailableException;

public interface ReservationService {

	void make(Reservation reservation) throws ReservationNotAvailableException;

}
