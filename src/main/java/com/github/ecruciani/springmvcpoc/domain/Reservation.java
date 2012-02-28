package com.github.ecruciani.springmvcpoc.domain;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

public class Reservation implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@DateTimeFormat(style = "S-")
	@NotNull
	private Date date;
	
	@Length(min = 3, max = 20)
	private String hotelName;
	
	public Date getDate() {
		return this.date;
	}

	public String getHotelName() {
		return this.hotelName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result
				+ ((hotelName == null) ? 0 : hotelName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Reservation other = (Reservation) obj;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (hotelName == null) {
			if (other.hotelName != null)
				return false;
		} else if (!hotelName.equals(other.hotelName))
			return false;
		return true;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

}
