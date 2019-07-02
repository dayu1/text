package com.java.service;

import java.util.List;

import com.java.model.EquipmentType;
import com.java.model.PageBean;

public interface EquipmentTypeService {

	public List<EquipmentType> find(PageBean pageBean,EquipmentType s_equipmentType);
	
	public int count(EquipmentType s_equipmentType);
	
	public void add(EquipmentType equipmentType);
	
	public void update(EquipmentType equipmentType);
	
	public void delete(int id);
	
	public EquipmentType loadById(int id);
}
