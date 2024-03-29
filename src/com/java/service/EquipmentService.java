package com.java.service;

import java.util.List;

import com.java.model.Equipment;
import com.java.model.PageBean;

public interface EquipmentService {

	public List<Equipment> find(PageBean pageBean,Equipment s_equipment);
	
	public int count(Equipment s_equipment);
	
	public void delete(int id);
	
	public void add(Equipment equipment);
	
	public void update(Equipment equipment);
	
	public Equipment loadById(int id);
	
	public boolean existEquipmentByTypeId(int typeId);
	
	public void addRepair(int id,String userMan);
	
	public void updateRepair(int id,int repairId,String repairMan,boolean success);
}
