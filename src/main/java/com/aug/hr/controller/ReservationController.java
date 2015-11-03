/**
 *
 * @author natechanok
 * @date Oct 22, 2015
 */

package com.aug.hr.controller;

import static org.hamcrest.CoreMatchers.nullValue;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.aug.hrdb.dto.ReportReservationDto;

import com.aug.hrdb.dto.ApplicantDto;

import com.aug.hrdb.dto.ReservationDto;
import com.aug.hrdb.entities.Reservation;
import com.aug.hrdb.services.ReservationService;
import com.aug.hrdb.entities.MasDivision;
import com.aug.hrdb.entities.MasReservationType;
import com.aug.hrdb.entities.Room;
import com.aug.hrdb.services.EmployeeService;
import com.aug.hrdb.services.LoginService;
import com.aug.hrdb.services.MasDivisionService;
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
	private MasDivisionService masDivisionService;
	
	@Autowired
	private MasReservationTypeService masReservationTypeService;

	
	
	@ModelAttribute("rooms")
	public List<Room> roomList(){
		return roomService.findAll();
	}
	
	@ModelAttribute("divisions")
	public List<MasDivision> masDivisionsList(){
		return masDivisionService.findAll();
	}
	
	@ModelAttribute("reservationTypes")
	public List<MasReservationType> reservationTypeList(){
		return masReservationTypeService.findAll();
	}
	
	@RequestMapping(value="/reservation/test",method=RequestMethod.GET)
	public @ResponseBody ReservationDto reservationTest(){
		ReservationDto xxx = reservationService.findReservationById(1);
		return xxx;
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
	
		/*                Change time for insert                      */
		Date dateStart = reservation.getStart();//get date from calendar
		Date dateEnd = reservation.getEnd();
		DateFormat formatterDate = new SimpleDateFormat("yyyy-MM-dd",Locale.ENGLISH);
		
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
		formatter.setTimeZone(TimeZone.getTimeZone("GMT"));//set Timezone to be GMT
		
		String startString = formatter.format(dateStart);//convert date's timezone but it return String
		String endString = formatter.format(dateEnd);
		
		if ( reservationService.findByTimestamp(startString, reservation.getRoom().getId()).size() == 0 && reservationService.findByTimestamp(endString, reservation.getRoom().getId()).size() == 0 && reservationService.findByBetween(startString, endString, reservation.getRoom().getId()).size()==0) {
			
			System.out.println("Can");
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);//new format to convert String to Date
			try {
				//System.out.println(format.parse(startString));
				reservation.setStart(format.parse(startString));//set date with new timezone 
				reservation.setDateReservation(reservation.getStart());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				//System.out.println(format.parse(endString));
				reservation.setEnd(format.parse(endString));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			reservationService.create(reservation);
			return reservationService.findReservationById(reservation.getId());
		} else {
			System.out.println("Can't");
			return new ReservationDto();
		}
	}

	@RequestMapping(value="/reservation/ajax/updateDateTime", method=RequestMethod.POST)
	public @ResponseBody ReservationDto updateGetDateTime(@RequestBody Reservation reservation){
		Reservation reservationToUpdate = reservationService.findById(reservation.getId());
		reservationToUpdate.setId(reservation.getId());
		reservationToUpdate.setDateReservation(reservation.getStart());
		reservationToUpdate.setStart(reservation.getStart());
		reservationToUpdate.setEnd(reservation.getEnd());
		reservationService.update(reservationToUpdate);
		return reservationService.findReservationById(reservation.getId());
	}
	
	@RequestMapping(value="/reservation/ajax/updateData", method=RequestMethod.POST)
	public @ResponseBody ReservationDto updateData(@RequestBody Reservation reservation){
		Reservation reservationToUpdate = reservationService.findById(reservation.getId());
		reservationToUpdate.setId(reservation.getId());
		
		reservationToUpdate.setRoom(reservation.getRoom());
		reservationToUpdate.setDescription(reservation.getDescription());
		reservationToUpdate.setMasreservationtype(reservation.getMasreservationtype());
		reservationToUpdate.setMasDivision(reservation.getMasDivision());
		reservationToUpdate.setReservationBy(reservation.getReservationBy());
		reservationService.update(reservationToUpdate);
		return reservationService.findReservationById(reservation.getId());
	}
	
	
	@RequestMapping(value = "/reservation/ajax/deleteReservation/{id}", method = RequestMethod.POST)
	public @ResponseBody String deleteReservation(@PathVariable Integer id) {
		ReservationDto reservationDto;
		String returnTitle ;
		try{
			reservationDto = reservationService.findReservationById(id);
			returnTitle = reservationDto.getTitle();
		}catch(Exception e){
			return e.getMessage();
		}
		reservationService.deleteById(id);
	return returnTitle;
	}
	
	@RequestMapping(value = "/reservation/ajax/searchReservation", method = RequestMethod.GET)
	public @ResponseBody List<ReservationDto> searchReservation(@RequestParam String reservationBy, @RequestParam Integer masDivision, @RequestParam Integer masreservationtype) {
		System.out.println("do in controller");
		Reservation reservation = new Reservation();
		reservation.setMasDivision(masDivisionService.findById(masDivision));
		reservation.setMasreservationtype(masReservationTypeService.findById(masreservationtype));
		reservation.setReservationBy(reservationBy);
		return reservationService.searchReservation(reservation);
	}
	
	@RequestMapping(value = "reservation/report", method = RequestMethod.GET)
	public String reservationReport() {
		return "reservation/reservationReport";
	}

	@RequestMapping(value = "reservation/report/findReservationReport", method = RequestMethod.POST)
	public @ResponseBody Object reservationReport(@RequestParam Integer roomId,Integer reservationTypeId, Integer divisionId,String reservationBy)
			throws Exception {
		System.out.println("roomId : " + roomId);
		System.out.println("reservationTypeId : " + reservationTypeId);
		System.out.println("divisionId : " + divisionId);
		System.out.println("reservationBy : " + reservationBy);
		final List<ReportReservationDto> data;
		data = reservationService.findReservation(roomId, reservationTypeId, divisionId, reservationBy);

		return new Object() {
			public List<ReportReservationDto> getData() {
				return data;
			}
		};
	}
}
