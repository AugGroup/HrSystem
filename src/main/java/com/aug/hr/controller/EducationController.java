/**
 *
 * @author Preeyaporn
 * @date 28 เม.ย. 2558
 */
package com.aug.hr.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aug.hrdb.services.EducationDtoService;
import com.aug.hrdb.dto.EducationDto;
import com.aug.hrdb.entities.Applicant;
import com.aug.hrdb.entities.Education;
import com.aug.hrdb.services.EducationService;
import com.aug.hrdb.services.MasDegreetypeService;

@Controller
public class EducationController {

	@Autowired
	private EducationService educationService;

	@Autowired 
	private EducationDtoService educationDtoService;
	
	@Autowired
	private MasDegreetypeService masDegreetypeService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy",Locale.ENGLISH);
        CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
        binder.registerCustomEditor(Date.class, editor);
    }	
	
	@RequestMapping(value = "/education/{id}", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String init(ModelMap model, Locale locale,
			@PathVariable("id") Integer id, 
			@ModelAttribute EducationDto educationDto) {
		model.addAttribute("masdegreetypeList",
				masDegreetypeService.findAll());
		
		educationDto.setApplicant(id);
		model.addAttribute("id", educationDto.getApplicant());
		return "/education/education";
	}
	
	/*@RequestMapping(value = "/education/listAll", method = RequestMethod.POST)
	public @ResponseBody List<Education> listAll(
			@RequestBody Education education) {
		return educationService.findByCriteria(education);
	}*/

	/*@RequestMapping(value ="/education/listAll", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<Education> listAll(){
		Education education = new Education();
		education.setMajor("");
		return educationService.findByCriteria(education);
	}*/
	
	
	@RequestMapping(value ="/education/listAll/{id}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<EducationDto> listAll(@PathVariable("id") Integer id){
		
		return (List<EducationDto>) educationDtoService.searchEducation(id);
	}
	
	
	@RequestMapping(value = "/education/add", method = RequestMethod.POST)
	public @ResponseBody EducationDto addEducation(@RequestBody EducationDto educationDto) {
		Education education = new Education();
		educationService.create(education.fromEducationDto(education, educationDto));
		return educationDto;
	}

	@RequestMapping(value = "/education/update", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody EducationDto updateEducation(@RequestBody EducationDto educationDto) {
		Education education = educationService.findById(educationDto.getId());
		Education educationUpdate = education.fromEducationDto(education, educationDto);
		educationService.update(educationUpdate);
		return education.toEducationDto();
	}
	
	@RequestMapping(value = "/education/findById", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody EducationDto findById(@RequestParam Integer educationid) {
		Education education = educationService.findById(educationid);
		return education.toEducationDto();
	}
	
	/*
	@RequestMapping(value = "/education/findById/{educationid}", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody Education findById(@PathVariable("educationid") Integer educationid) {	
		return educationService.findById(educationid);
	}*/
		
	@RequestMapping(value = "/education/delete", method = RequestMethod.POST)
	public @ResponseBody String deleteEducation(@RequestParam Integer educationid) {
		educationService.deleteById(educationid);
		return "{success:true}";
	}

	@ModelAttribute("education")
	Education setupForm() {
		return new Education();
	}
}
