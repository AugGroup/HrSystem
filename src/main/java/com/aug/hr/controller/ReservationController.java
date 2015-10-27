/**
 *
 * @author natechanok
 * @date Oct 22, 2015
 */

package com.aug.hr.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aug.hrdb.entities.Reservation;


@Controller
public class ReservationController {

	
	@RequestMapping(value="/reservation",method=RequestMethod.GET)
	public String reservationPage(){
		return "reservation/reservation";
	}
	
	@RequestMapping(value="/reservation/ajax/getAllReservation",method=RequestMethod.GET)
	public @ResponseBody List<Reservation> findAppointment(@RequestParam(value="start") String start,
			@RequestParam(value="end") String end, @RequestParam(value="_",required = false) String underscore, 
			@RequestParam(value="timezone",required = false) String timezone, @RequestParam Integer mailStatus) throws ParseException {
			
		
			List<Reservation> reservations ;
		return null;
	}
}
