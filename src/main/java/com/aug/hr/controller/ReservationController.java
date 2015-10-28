/**
 *
 * @author natechanok
 * @date Oct 22, 2015
 */

package com.aug.hr.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aug.hrdb.dto.ReservationDto;
import com.aug.hrdb.entities.Reservation;
import com.aug.hrdb.services.ReservationService;
import com.google.common.collect.Lists;


@Controller
public class ReservationController {

	@Autowired ReservationService reservationService;
	
	
	@RequestMapping(value="/reservation",method=RequestMethod.GET)
	public String reservationPage(){
		return "reservation/reservation";
	}
	
	@RequestMapping(value="/reservation/ajax/getAllReservation",method=RequestMethod.GET)
	public @ResponseBody List<ReservationDto> findReservation(@RequestParam(value="start") String start,
			@RequestParam(value="end") String end, @RequestParam(value="_",required = false) String underscore, 
			@RequestParam(value="timezone",required = false) String timezone) throws ParseException {
			
		    System.out.println("start : "+start+"   end : "+end);
		
		    
			List<ReservationDto> reservations = new ArrayList<ReservationDto>();
			reservations = reservationService.findByDateRange(start, end);
	
/*		    Reservation reservation = new Reservation();
		    reservation.setId(1);
		    reservation.setName("test");
			List<Reservation> reservations = Lists.newArrayList(reservation);*/
		    
		if (reservations.size()==0) {
			return null;
		}else {
			return reservations;
		}
	}
}
