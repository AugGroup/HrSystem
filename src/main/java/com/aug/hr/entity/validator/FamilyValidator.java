/**
 * 
 * @author apiva kim
 * @date   Jan 12, 2015
 *
 *
 */


package com.aug.hr.entity.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.aug.hrdb.entities.Family;
import com.aug.hrdb.services.FamilyService;
import com.mysql.jdbc.StringUtils;


@Component
public class FamilyValidator  implements Validator{

	@Autowired
	private FamilyService service;
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
	    return Family.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
    	// TODO Auto-generated method stub
		
		
		Family rs = (Family)target;
		
		
		if (rs.getFamilyName().isEmpty()==true){
			errors.rejectValue("firstName", "empFamily.required.firstname");	
		}if(rs.getGender().isEmpty()==true){
			errors.rejectValue( "gender","empFamily.required.gender");				
		}if(rs.getAge()==null){
			errors.rejectValue( "age","empFamily.required.age");				
		}if(rs.getMobile().isEmpty()==true){
			errors.rejectValue( "mobile","empFamily.required.mobile");				
		}if(rs.getAddress().isEmpty()==true){
			errors.rejectValue( "address","empFamily.required.address");				
		}if(rs.getMasRelationType()==null){
			errors.rejectValue( "relation","empFamily.required.relation");				
		}if(rs.getApplicant()==null){
			errors.rejectValue( "employee","empFamily.required.employee");				
		}
	}
	

}