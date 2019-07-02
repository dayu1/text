package com.java.service;

import java.util.List;

import com.java.model.PageBean;
import com.java.model.Repair;

public interface RepairService {

	public List<Repair> find(PageBean pageBean,Repair s_repair);
	
	public int count(Repair s_repair);
	
}
