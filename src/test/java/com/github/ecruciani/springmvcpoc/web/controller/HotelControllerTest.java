package com.github.ecruciani.springmvcpoc.web.controller;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.hasKey;
import static org.hamcrest.Matchers.is;
import static org.mockito.Mockito.when;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.ui.ExtendedModelMap;

import com.github.ecruciani.springmvcpoc.domain.Hotel;
import com.github.ecruciani.springmvcpoc.domain.Room;
import com.github.ecruciani.springmvcpoc.service.HotelService;
import com.github.ecruciani.springmvcpoc.web.controller.HotelController;

@RunWith(MockitoJUnitRunner.class)
public class HotelControllerTest {

	@InjectMocks
	private HotelController hotelController = new HotelController();
	
	@Mock
	private HotelService hotelService;
	
	@Test
	public void shouldDisplayHotelInView() throws Exception {
		
		//Given
		final Integer hotelId = 1234;
		
		//When
		final Hotel hotel = new Hotel("Hotel Hilton");
		final Room room = new Room("Room deluxe");
		hotel.addRoom(room);
		ExtendedModelMap model = new ExtendedModelMap();
		
		when(hotelService.findHotelById(hotelId)).thenReturn(hotel);
		
		String viewName = hotelController.displayHotelForId(hotelId, model);
		
		//Then
		assertThat(viewName, is(equalTo("hotel")));
		assertThat(model.asMap().size(), is(equalTo(1)));
		assertThat(model.asMap(), hasKey("hotel"));
		assertThat(model.containsValue(hotel), is(true));
	}
}
