package com.github.ecruciani.springmvcpoc.service;

import org.springframework.stereotype.Service;

import com.github.ecruciani.springmvcpoc.domain.Hotel;
import com.github.ecruciani.springmvcpoc.domain.Room;

@Service
public class HotelServiceImpl implements HotelService {

	@Override
	public Hotel findHotelById(Integer hotelId) {
		final Hotel hotel = new Hotel("Hotel du Louvre " + hotelId);
		hotel.addRoom(new Room("Simple Room"));
		hotel.addRoom(new Room("Deluxe Room"));
		return hotel;
	}

}
