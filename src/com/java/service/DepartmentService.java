package com.java.service;

import java.util.List;

import com.java.model.Department;
import com.java.model.PageBean;

public interface DepartmentService {

	public List<Department> find(PageBean pageBean,Department s_department);
	
	public int count(Department s_department);
	
	public void add(Department department);
	
	public void update(Department department);
	
	public void delete(int id);
	
	public Department loadById(int id);
}
