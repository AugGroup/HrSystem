/**
 *
 * @author Preeyaporn
 * @date 25 พ.ค. 2558
 */
package com.aug.hr.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aug.hrdb.services.CertificationDtoService;
import com.aug.hrdb.services.EmployeeService;
import com.aug.hrdb.entities.Certification;
import com.aug.hrdb.entities.Employee;
import com.aug.hrdb.dto.CertificationDto;
import com.aug.hrdb.services.CertificationService;

@Controller
public class CertificationController {

	@Autowired
	private CertificationService certificationService;
	@Autowired
	private CertificationDtoService certificationDtoService;
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value = "/certification/{id}", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String init(ModelMap model,Locale locale,
			@PathVariable("id") Integer id, 
			@ModelAttribute CertificationDto certificationDto) {
		
		Employee employee = employeeService.findById(id);
		//certificationDto.setApplicantId(employee.getApplicant().getId());
		model.addAttribute("appId", employee.getApplicant().getId());
		//model.addAttribute("id", certificationDto.getApplicantId());
		return "/certification/certification";
	}
	
	@RequestMapping(value ="/certification/listAll/{id}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<CertificationDto> listAll(@PathVariable("id") Integer id){
		
		return (List<CertificationDto>) certificationDtoService.searchCertification(id);
	}
	
	
	@RequestMapping(value = "/certification/add", method = RequestMethod.POST)
	public @ResponseBody CertificationDto addCertification(@RequestBody CertificationDto certificationDto) {
		Certification certification = new Certification();
		certificationService.create(certification.fromCertificationDto(certification,certificationDto));
		return certificationDto;
	}

	@RequestMapping(value = "/certification/update", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody CertificationDto updateCertification(@RequestBody CertificationDto certificationDto) {
		Certification certification = certificationService.findById(certificationDto.getId());
		certificationService.update(certification.fromCertificationDto(certification,certificationDto));
		return certification.toCertificationDto();
	}
	
	@RequestMapping(value = "/certification/findById", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody CertificationDto findById(@RequestParam Integer certificationid) {
		Certification certification = certificationService.findById(certificationid);
		return certification.toCertificationDto();
	}
	
	@RequestMapping(value = "/certification/delete", method = RequestMethod.POST)
	public @ResponseBody String deleteCertification(@RequestParam Integer certificationid) {
		certificationService.deleteById(certificationid);
		return "{success:true}";
	}

	@ModelAttribute("certification")
	Certification setupForm() {
		return new Certification();
	}
}
