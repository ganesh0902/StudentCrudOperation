package com.student.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.student.DaoImpl.StudentImpl;
import com.student.model.Student;

@Controller
public class StudentController {

	@Autowired
	StudentImpl dao;
	@RequestMapping("/page")
	public String home()
	{	
						
		return "index";
	}
	@RequestMapping("/h")
	public String head()
	{
		return "header";
	}
	@RequestMapping("/save")
	public String save(@RequestParam("id")int id,@RequestParam("name")String name,@RequestParam("city")String city,@RequestParam("salary")int salary,Model model)
	{
		Student s=new Student();
		
		s.setId(id);
		s.setName(name);
		s.setCity(city);
		s.setSalary(salary);
		dao.save(s);
		
		return "index";
	}
	@RequestMapping("/deletepage")
	public String dataPage()
	{
		System.out.println("hello");
		return "Deletepage";
	}
	@RequestMapping("/RecordById")
	public String RecordDelete(@RequestParam("id")int id,Model model)
	{
		Student s=new Student();
		s.setId(id);
		
		dao.delete(s);
		
		return "index";
	}
	@RequestMapping("/update")
	public String updatePage()
	{
		
		return "updatePage";
	}
	@RequestMapping("/RecordUpdateById")
	public String updateRecord(@RequestParam("id")int id,Model model)
	{
		Student s=new Student();
		s.setId(id);
		Student studentById = dao.getStudentById(s);
		
		model.addAttribute("std", studentById);
		
		return "UpdateRecordPage";
	}
	  @RequestMapping("/updateProcess") 
	  public String updateProcess(@ModelAttribute Student s,Model model) 	  
	  { 
		  
		  dao.updateReocrd(s);
	  
		  return "DisplayRecord"; 
	  }
	 	
	@RequestMapping("/recordDisplay")
	public String dataDisplay(Model model)
	{
		List<Student> lis = dao.Record();
		
		model.addAttribute("std",lis);
		
		return "DisplayRecord";
	}
	@RequestMapping("/DeleteById/{id}")
	public String deleteById(@PathVariable int id,Model model)
	{
		Student s=new Student();
		s.setId(id);
		dao.delete(s);
		
		System.out.println(id);
		model.addAttribute("del",s);
		return "DisplayRecord";
	}
	@RequestMapping("/SearchById/{id}")
	public String SearchById(@PathVariable int id,Model model)
	{
		Student s=new Student();
		s.setId(id);
		Student studentById = dao.getStudentById(s);
		model.addAttribute("std",studentById);
		
		return "UpdateRecordPage";
	}	
}