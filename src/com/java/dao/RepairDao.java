package com.java.dao;

import java.util.List;

import com.java.model.PageBean;
import com.java.model.Repair;

public interface RepairDao {

	public void add(Repair repair);
	
	public List<Repair> find(PageBean pageBean,Repair s_repair);
	
	public int count(Repair s_repair);
	
	public void update(Repair repair);
}
