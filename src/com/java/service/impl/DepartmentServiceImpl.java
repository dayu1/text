package com.java.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.dao.DepartmentDao;
import com.java.model.Department;
import com.java.model.PageBean;
import com.java.service.DepartmentService;

@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService{

	@Resource
	private DepartmentDao departmentDao;
	
	@Override
	public List<Department> find(PageBean pageBean, Department s_department) {
		return departmentDao.find(pageBean, s_department);
	}

	@Override
	public int count(Department s_department) {
		return departmentDao.count(s_department);
	}

	@Override
	public void add(Department department) {
		departmentDao.add(department);
	}

	@Override
	public void update(Department department) {
		departmentDao.update(department);
	}

	@Override
	public void delete(int id) {
		departmentDao.delete(id);
	}

	@Override
	public Department loadById(int id) {
		return departmentDao.loadById(id);
	}

}
