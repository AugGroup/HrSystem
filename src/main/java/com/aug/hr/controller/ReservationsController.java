/**
 *
 * @author natechanok
 * @date Oct 22, 2015
 */

package com.aug.hr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ReservationsController {

	@RequestMapping(value="/reservations",method=RequestMethod.GET)
	public String reservationsPage(){
		return "reservations/reservations";
	}
}
