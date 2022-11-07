package com.student.DaoImpl;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.student.Dao.StudentDao;
import com.student.model.Student;

public class StudentImpl implements StudentDao
{
	private JdbcTemplate jdbcTemplate;
	@Override
	public int save(Student s) {

		String query="insert into Student values(?,?,?,?)";
		
		int r = jdbcTemplate.update(query,s.getId(),s.getName(),s.getCity(),s.getSalary());
		
		if(r>=0)
		{
			System.out.println("data is save successfully");
		}
		else
		{
			System.out.println("Something is wrong ");
		}
		
		return r;
	}
	@Override
	public int delete(Student s) {
		// delete record by Id
		
		String query="delete from student where id=?";				
		int r = jdbcTemplate.update(query,s.getId());						
		if(r>0)
		{
			System.out.println("Record deleted successfully");
		}
		else
		{
			System.out.println("Record is not delete");
		}		
		return r;
	}	
	@Override
	public Student getStudentById(Student s) {
		// fetch data by id
		
		String query="select * from student where id=?";
		
		RowMapper<Student> rowMapperImpl=new RowMapperImpl();
		
		Student student = jdbcTemplate.queryForObject(query,rowMapperImpl,s.getId());
		
		return student;
	}	
	@Override
	public String updateReocrd(Student s) {
		// update record 
				
		String query="update student set name=?,city=?,salary=? where id=?";						
		int r = jdbcTemplate.update(query,s.getName(),s.getCity(),s.getSalary(),s.getId());
						
		if(r>0)
		{
			System.out.println("Record are successfully updated");
		}
		else
		{
			System.out.println("something is wrong ");
		}				
		return null;
	}
	@Override
	public List<Student> Record() {
		
		String query="select * from student";
		
		RowMapper<Student> s= new RowMapperImpl();
		
		List<Student> li = jdbcTemplate.query(query,s);
		
		return li;
	}		
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}	
}