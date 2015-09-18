/**
 *
 * @author Pranrajit
 * @date 30 เม.ย. 2558
 */
package com.aug.hr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.aug.hrdb.entities.MasSpecialty;
import com.aug.hrdb.services.MasSpecialtyService;



public class MasSpecialtyController {
	
	@Autowired
	private MasSpecialtyService masSpecialtyService;
	@ModelAttribute
	MasSpecialty setuuForm(){
		return new MasSpecialty();
	}

}
