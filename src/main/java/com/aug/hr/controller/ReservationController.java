/**
 *
 * @author natechanok
 * @date Oct 22, 2015
 */

package com.aug.hr.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aug.hrdb.dto.ReservationDto;
import com.aug.hrdb.entities.Reservation;
import com.aug.hrdb.services.ReservationService;
import com.aug.hrdb.entities.MasReservationType;
import com.aug.hrdb.entities.Room;
import com.aug.hrdb.services.EmployeeService;
import com.aug.hrdb.services.LoginService;
import com.aug.hrdb.services.MasReservationTypeService;
import com.aug.hrdb.services.RoomService;


@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private MasReservationTypeService masReservationTypeService;

	
	@ModelAttribute("rooms")
	public List<Room> roomList(){
		return roomService.findAll();
	}
	
	@ModelAttribute("reservationTypes")
	public List<MasReservationType> reservationTypeList(){
		return masReservationTypeService.findAll();
	}
	
	@RequestMapping(value="/reservation",method=RequestMethod.GET)
	public String reservationPage(){
		return "reservation/reservation";
	}
	
	@RequestMapping(value="/reservation/ajax/getAllReservation",method=RequestMethod.POST)
	public @ResponseBody List<ReservationDto> findAllReservation(@RequestParam(value="start") String start,
			@RequestParam(value="end") String end, @RequestParam(value="_",required = false) String underscore, 
			@RequestParam(value="timezone",required = false) String timezone) throws ParseException {
		    System.out.println("start : "+start+"   end : "+end);
			List<ReservationDto> reservations = new ArrayList<ReservationDto>();
			reservations = reservationService.findByDateRange(start, end);
		if (null == reservations) {
			return null;
		}else if (reservations.size()==0) {
			return null;
		}else {
			return reservations;
		}
	}
	
	@RequestMapping(value="/reservation/ajax/getReservation/{id}", method=RequestMethod.POST)
	public @ResponseBody ReservationDto findReservation(@PathVariable Integer id){
		ReservationDto reservation = reservationService.findReservationById(id);
		return reservation;
	}
	
	@RequestMapping(value="/reservation/insertReservation",method=RequestMethod.POST)
	public @ResponseBody ReservationDto insertReservation(@RequestBody Reservation reservation) {
		
		reservation.setEmployee(employeeService.findById(1));
		reservation.setMasreservationtype(masReservationTypeService.findById(1));
		reservation.setRoom(roomService.findById(1));
		reservationService.create(reservation);
		//reservationService.find
//		/*                                  Get Who's Appoint                                  */		
//		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		//System.out.println("userName : " + userDetails.getUsername());
//		Login login = loginService.findByUserName(userDetails.getUsername());
//		reservation.setLogin(login);//set login Id
//		
//		/*                Change time for insert                      */
//		Date dateStart = reservation.getStart();//get date from calendar
//		Date dateEnd = reservation.getEnd();
//		
//		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
//		formatter.setTimeZone(TimeZone.getTimeZone("GMT"));//set Timezone to be GMT
//		
//		String startString = formatter.format(dateStart);//convert date's timezone but it return String
//		String endString = formatter.format(dateEnd);
//		
//		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);//new format to convert String to Date
//		try {
//			//System.out.println(format.parse(startString));
//			reservation.setStart(format.parse(startString));//set date with new timezone 
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		try {
//			//System.out.println(format.parse(endString));
//			reservation.setEnd(format.parse(endString));
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
////		reservation.setEmployee(employeeService.findById(id));
//		reservationService.create(reservation);
//		//System.out.println(appointment.getApplicant().getId());
		
		return reservationService.findReservationById(reservation.getId());
	}
}
