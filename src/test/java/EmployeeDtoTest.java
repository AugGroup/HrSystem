import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.aug.hrdb.dto.EmployeeListDto;
import com.aug.hrdb.entities.Employee;
import com.aug.hrdb.services.EmployeeDtoService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-bean-db-test.xml" })
@Transactional
public class EmployeeDtoTest {
	
	@Autowired
	private EmployeeDtoService empDtoService;
	
	@Test
	public void listEmployee() {
		
		List<EmployeeListDto> employeeListDto = empDtoService.searchEmployee();
		System.out.println("id: "+employeeListDto.get(0).getId());
			
	}
	
	

}
