package com.java.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.dao.RepairDao;
import com.java.model.PageBean;
import com.java.model.Repair;
import com.java.service.RepairService;

@Service("repairService")
public class RepairServiceImpl implements RepairService{

	@Resource
	private RepairDao repairDao;
	
	
	@Override
	public List<Repair> find(PageBean pageBean, Repair s_repair) {
		return repairDao.find(pageBean, s_repair);
	}

	@Override
	public int count(Repair s_repair) {
		return repairDao.count(s_repair);
	}




}
